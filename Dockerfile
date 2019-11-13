FROM ruby:2.6-alpine as jekyll-base

RUN apk add --no-cache build-base gcc bash cmake git

RUN gem install jekyll

EXPOSE 4000

WORKDIR /app

ENTRYPOINT [ "bundle", "exec", "jekyll" ]

CMD [ "--help" ]

##
##
## New stage in multi-stage image
FROM jekyll-base

# create new site by setting -e JEKYLL_NEW=true
ENV JEKYLL_NEW false

COPY entrypoint.sh /usr/local/bin/

# on every container start we'l'
ENTRYPOINT [ "entrypoint.sh" ]

CMD [ "bundle", "exec", "jekyll", "serve", "--force_polling", "-H", "0.0.0.0", "-P", "4000" ]