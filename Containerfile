FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN storage create-db
RUN storage populate-db
RUN storage add-user -u admin -p admin
EXPOSE 5000
CMD ["storage", "run"]
