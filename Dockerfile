# Use an official Ruby runtime as a parent image
FROM ruby:2.7

# Install essential Linux packages
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev zlib1g-dev

# Set the working directory in the container to /website
WORKDIR /website

# Add the Gemfile and Gemfile.lock from your app
ADD Gemfile /website/Gemfile
ADD Gemfile.lock /website/Gemfile.lock

# Install the gems specified in the Gemfile
RUN gem install bundler && bundle install

# Copy the current directory contents into the container at /website
ADD . /website

# Make port 4000 available to the world outside this container
EXPOSE 4000

# Define the command to start the app. This will start Jekyll and watch the site
RUN JEKYLL_ENV=production bundle exec jekyll build