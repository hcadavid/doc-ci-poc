FROM python:3.9-alpine

RUN apk add --no-cache make

CMD ["/bin/sh"]
