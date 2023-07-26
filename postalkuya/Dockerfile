FROM ruby:3.2.2

ENV RAILS_ENV=production

# データベース用にPostgreSQLをインストール
RUN apt-get update -qq && apt-get install -y postgresql-client
RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
# bundlerバージョンを上げないとエラーになる対策
RUN gem update --system 3.3.20 && bundle install
COPY . /app

# コンテナ起動時に実行させるentrypoint.shを追加
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3010

# Rails サーバ起動
CMD ["rails", "server", "-b", "0.0.0.0"]