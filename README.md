# Portfolio Website

![logo](https://raw.githubusercontent.com/DavidSlr/portfolio/main/favicon/favicon-32x32.png)

This is my portfolio website that you can find deployed under [davidschneller.com](http://davidschneller.com)

## Tech

I used

- [Jekyll](http://jekyllrb.com/) as a static site generator. My portfolio pages are implemented as a collection that is listed on the homepage.
- Standalone [Simple Lightbox](https://simplelightbox.com/) to present and skip through images
- Github Actions to build and deploy to ~~SFTP~~ [netlify](https://www.netlify.com/) on commits to main branch

## Dev

There is a build script (`build.sh`) that can be run to start a docker container which

 - `./build.sh watch` - monitors the source code for updates and serves the website on localhost:4000
 - `./build.sh prod` - creates the production website with compressed CSS in _prod_site

 Don't forget to give the script execution rights with `chmod u+x build.sh`