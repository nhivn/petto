FROM ruby:2.7.0-alpine3.11

ENV BUNDLER_VERSION=2.1.2

# Install all required dependencies
RUN apk add --update --no-cache \
    binutils-gold \
    build-base \
    curl \
    file \
    g++ \
    gcc \
    git \
    less \
    libstdc++ \
    libffi-dev \
    libc-dev \
    linux-headers \
    libxml2-dev \
    libxslt-dev \
    libgcrypt-dev \
    make \
    netcat-openbsd \
    nodejs \
    openssl \
    pkgconfig \
    postgresql-dev \
    python \
    tzdata \
    yarn

RUN gem install bundler -v 2.1.2

WORKDIR /petto

# Copy and install all gems if needed
COPY Gemfile Gemfile.lock ./
RUN bundle config build.nokogiri --use-system-libraries
RUN bundle check || bundle install

# Copy and install packages using yarn if needed
COPY package.json yarn.lock ./
RUN yarn install --check-files --ignore-optional

COPY . ./

CMD ["./docker-petto-start.sh"]
