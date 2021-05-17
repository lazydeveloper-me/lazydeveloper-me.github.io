FROM jekyll/jekyll:4.0.1

ADD . /srv/jekyll

RUN jekyll build

EXPOSE 4000