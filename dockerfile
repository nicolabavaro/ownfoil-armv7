FROM python:alpine3.19

RUN apk add bash nginx sudo
RUN pip3 install apscheduler tomli

RUN mkdir /app
COPY ./app /app

COPY ./conf/nginx.conf /etc/nginx/http.d/default.conf

CMD ["python3", "--version"]
ENTRYPOINT [ "/app/run.sh" ]