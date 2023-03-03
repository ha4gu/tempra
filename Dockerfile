ARG RUBY_VERSION
FROM rubylang/ruby:${RUBY_VERSION}-jammy
WORKDIR /rails
EXPOSE 3000

# 環境変数
ARG RAILS_ENV
ENV LANG=C.UTF-8 \
    TZ=Asia/Tokyo \
    BUNDLE_APP_CONFIG=/usr/local/bundle \
    RAILS_ENV=${RAILS_ENV}

# OSパッケージ & Node.js
RUN apt-get update && \
    apt-get install -y build-essential curl libpq-dev libvips less && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /usr/share/doc /usr/share/man

# 基本npm
RUN npm install -g npm yarn

# 基本gem
ARG RUBYGEMS_VERSION
ARG FOREMAN_VERSION
RUN gem update --system ${RUBYGEMS_VERSION} && \
    gem install bundler && \
    gem install foreman -v ${FOREMAN_VERSION}

# bundler設定
RUN bundle config set --local jobs $(nproc) && \
    bundle config set --local retry 2 && \
    bundle config set --local path vendor/bundle && \
    bundle config set --local silence_root_warning true

# ファイル一括コピー
COPY . .

# プロセス起動
CMD bin/dev
