#!/bin/bash
#
# Local build tooling for the portfolio site.
#
# Uses the custom Docker image defined in ./Dockerfile, whose gem versions come
# entirely from Gemfile.lock. That is the same image and the same build command
# the GitHub Actions -> Netlify pipeline uses, so `./build.sh prod` produces the
# exact artifact that gets deployed.
#
# First run builds the image (a few minutes while native gems compile); after
# that it is cached until the Dockerfile or Gemfile(.lock) change.
#
# To make this script work, give it execution rights via
# chmod u+x build.sh

set -e

IMAGE="portfolio-jekyll"

GREEN='\033[0;32m'
BOLD='\033[1m'
NC='\033[0m' # No Color

usage() {
  echo "";
  echo -e "${BOLD}Call the script with one of these parameters${NC}";
  printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
  echo -e "- ${GREEN}build.sh watch${NC} = Serve on localhost:4000 with live reload (development config)";
  echo -e "- ${GREEN}build.sh prod${NC}  = Build the production site into ./_prod_site (same as CI)";
  echo -e "- ${GREEN}build.sh test${NC}  = Build for production AND serve ./_prod_site on localhost:4000";
  echo -e "- ${GREEN}build.sh bash${NC}  = Open a shell inside the build container";
  echo -e "- ${GREEN}build.sh image${NC} = Force a rebuild of the Docker image from ./Dockerfile";
  exit 1;
}

case "$1" in
  watch|prod|test|bash|image) ;;
  *) usage ;;
esac

# Build the image on first use (or a forced rebuild when the Dockerfile /
# dependency files changed).
ensure_image() {
  if [ "$1" == "force" ] || [ -z "$(docker images -q "$IMAGE" 2>/dev/null)" ]; then
    echo -e "${BOLD}Building the ${IMAGE} Docker image...${NC}";
    docker build -t "$IMAGE" .
  fi
}

if [ "$1" == "image" ]; then
  ensure_image force
  echo -e "${GREEN}Image ${IMAGE} is ready.${NC}";
  exit 0
fi

ensure_image

if [ "$1" == "watch" ]; then
  echo -e "${BOLD}Serving on http://localhost:4000 (live reload, development config)${NC}";
  docker run --rm -it -v "$(pwd)":/site -p 4000:4000 "$IMAGE" \
    bundle exec jekyll serve --host 0.0.0.0 --livereload --force_polling
fi

if [ "$1" == "prod" ]; then
  echo -e "${BOLD}Building the production site into ./_prod_site (same as CI)${NC}";
  docker run --rm -v "$(pwd)":/site "$IMAGE" \
    bundle exec jekyll build --destination _prod_site/ --config _config.yml,_config_prod.yml
  echo -e "${GREEN}Done. Output is in ./_prod_site${NC}";
fi

if [ "$1" == "test" ]; then
  echo -e "${BOLD}Building the production site into ./_prod_site (same as CI)${NC}";
  docker run --rm -v "$(pwd)":/site "$IMAGE" \
    bundle exec jekyll build --destination _prod_site/ --config _config.yml,_config_prod.yml
  echo -e "${GREEN}Build done. Serving the production output on http://localhost:4000${NC}";
  echo -e "(Press Ctrl+C to stop)";
  cd _prod_site && exec python3 -m http.server 4000
fi

if [ "$1" == "bash" ]; then
  docker run --rm -it -v "$(pwd)":/site "$IMAGE" bash
fi
