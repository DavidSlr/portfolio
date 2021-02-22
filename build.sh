#!/bin/bash

# To make this script work, give it execution rights via
# chmod u+x build.sh


GREEN='\033[0;32m'
BOLD='\033[1m'
NC='\033[0m' # No Color

params=("watch" "prod")

#if [ "$1" != "watch" ]; then
#if [[ "${params[@]}" =~ "$1" ]]; then
if [ "$1" != "watch" ] && [ "$1" != "prod" ]; then
  echo "";  
  echo -e "${BOLD}Call the script with one of these parameters${NC}";
  printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
  echo -e "- ${GREEN}build.sh watch${NC} = Serving the website on localhost:4000 and watching the folder for changes";
  echo -e "- ${GREEN}build.sh prod${NC} = Compile the website for production into ./_prod_site folder";
  exit 1;
fi

if [ "$1" == "watch" ]; then
    echo -e "${BOLD}Starting the Jekyll Docker container and serve on localhost:4000${NC}";
    docker run --rm --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" -p 4000:4000 jekyll/jekyll:3.8 jekyll serve --force_polling
fi

if [ "$1" == "prod" ]; then
    echo -e "${BOLD}Starting the Jekyll Docker and building for production in /_prod_site${NC}";
    
    docker run --rm --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" jekyll/jekyll:3.8 jekyll build --destination _prod_site/ #--config _config.yml,_config_prod.yml
fi

