# Reproducible Jekyll build environment for this site.
#
# All gem versions come from Gemfile.lock (the single source of truth), so a
# local `./build.sh prod` and the GitHub Actions -> Netlify build produce the
# same output. Pinned to Ruby 3.1 + Jekyll 4.2.2 to match the current lockfile;
# a Jekyll version bump is handled in a separate change.
#
# Platform is pinned to linux/amd64 so the precompiled gems in Gemfile.lock
# (e.g. ffi ...-x86_64-linux-gnu) install as-is and match the amd64 CI runner.
# On Apple Silicon this runs under emulation.
FROM --platform=linux/amd64 ruby:3.1-slim

# System libraries required to install the locked gems:
#   build-essential -> compiles sassc (libsass), eventmachine, http_parser.rb
#   libssl-dev      -> eventmachine
#   git             -> Jekyll uses it during some builds
RUN apt-get update \
 && apt-get install -y --no-install-recommends build-essential libssl-dev git \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /site

# Install the exact locked gems into the image's default gem path
# (/usr/local/bundle, outside /site so a runtime volume mount can't shadow it).
# This layer is cached until Gemfile / Gemfile.lock change.
COPY Gemfile Gemfile.lock ./
RUN gem install bundler:2.3.27 \
 && bundle install

EXPOSE 4000
