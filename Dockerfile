FROM ruby:3.3.0-slim

WORKDIR /rails

# Install dependencies
RUN apt-get update -qq && \
    apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    && rm -rf /var/lib/apt/lists/*

# Install gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy the rest of the application
COPY . .

# Precompile assets and clean up
RUN bundle exec bootsnap precompile --gemfile
