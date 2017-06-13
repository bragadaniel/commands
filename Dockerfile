FROM ruby:2.3-slim
# Install dependences
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
      build-essential nodejs libpq-dev
# Set path
ENV INSTALL_PATH /oneslackchat
# Create workdir
RUN mkdir -p $INSTALL_PATH
# Set path for workdir principal
WORKDIR $INSTALL_PATH
# Copy  Gemfile for container
COPY Gemfile ./
# Set o path for  Gems
ENV BUNDLE_PATH /box
# Copy code for in container
COPY . .
