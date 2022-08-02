FROM debian:latest
ADD . /app
RUN chmod -R 777 /app
CMD /app/Start.sh
