#!/bin/bash

# To make this script work, give it execution rights via
# chmod u+x build.sh


GREEN='\033[0;32m'
BOLD='\033[1m'
NC='\033[0m' # No Color

params=("watch" "prod")

#if [ "$1" != "watch" ]; then
#if [[ "${params[@]}" =~ "$1" ]]; then
if [ "$1" != "watch" ] && [ "$1" != "prod" ] && [ "$1" != "bash" ] && [ "$1" != "trace" ] && [ "$1" != "new" ] && [ "$1" != "fetch" ]; then
  echo "";  
  echo -e "${BOLD}Call the script with one of these parameters${NC}";
  printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
  echo -e "- ${GREEN}build.sh watch${NC} = Serving the website on localhost:4000 and watching the folder for changes";
  echo -e "- ${GREEN}build.sh prod${NC} = Compile the website for production into ./_prod_site folder";
  echo -e "- ${GREEN}build.sh bash${NC} = Start a bash prompt in the jekyll container";
  echo -e "- ${GREEN}build.sh new${NC} = Create a new jekyll project in the current folder";
  echo -e "- ${GREEN}build.sh fetch${NC} = Fetch the jekyll docker images";
  exit 1;
fi

if [ "$1" == "watch" ]; then
    echo -e "${BOLD}Starting the Jekyll Docker container and serve on localhost:4000${NC}";
    docker run -p 4000:4000 -v $(pwd):/site bretfisher/jekyll-serve
    #docker run --rm --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" -p 4000:4000 jekyll/jekyll jekyll serve --force_polling
fi

if [ "$1" == "prod" ]; then
    echo -e "${BOLD}Starting the Jekyll Docker and building for production in /_prod_site${NC}";
    
    docker run -v $(pwd):/site -it --entrypoint bash bretfisher/jekyll -c "bundle exec jekyll build --destination _prod_site/ --config _config.yml,_config_prod.yml"
    #docker run --rm --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" jekyll/jekyll:4.4.1 jekyll build --destination _prod_site/ --config _config.yml,_config_prod.yml
fi

if [ "$1" == "bash" ]; then
    echo -e "${BOLD}Starting the Jekyll Docker and getting a bash prompt${NC}";
    
    docker run -v $(pwd):/site -it --entrypoint bash bretfisher/jekyll
    #docker run -it --rm --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" jekyll/jekyll bash
fi


if [ "$1" == "new" ]; then
    echo -e "${BOLD}Starting the Jekyll Docker and creating a new jekyll project${NC}";
    
    docker run -v $(pwd):/site bretfisher/jekyll new .
fi


if [ "$1" == "fetch" ]; then
    echo -e "${BOLD}Starting the Jekyll Docker and creating a new jekyll project${NC}";
    
    docker fetch bretfisher/jekyll
    docker fetch bretfisher/jekyll-serve
fi
