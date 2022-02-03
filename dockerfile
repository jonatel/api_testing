from alpine:latest
RUN apk add --no-cache py3-pip \
    && pip3 install --upgrade pip

WORKDIR /app
COPY . /app

RUN pip3 --no-cache-dir install -r requirements.txt

EXPOSE 8080

RUN nohup jupyter lab --no-browser --allow-root --ip="0.0.0.0" --port=8080 &

ENTRYPOINT ["python3"]
CMD ["app.py"]
