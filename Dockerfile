FROM python:3.9-alpine

RUN apk add --no-cache make

RUN apk add --no-cache git

CMD ["/bin/sh"]
