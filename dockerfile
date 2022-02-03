from alpine:latest
RUN apk add --no-cache py3-pip \
    && pip3 install --upgrade pip

WORKDIR /app
COPY . /app

RUN pip3 --no-cache-dir install -r requirements.txt

# Add Tini. Tini operates as a process subreaper for jupyter. This prevents
# kernel crashes.
# ENV TINI_VERSION v0.6.0
# ENV JUPYTER_NOTEBOOK_PASSWORD genesys
# ENV JUPYTER_NOTEBOOK_INTERFACE lab
# ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
# RUN chmod +x /usr/bin/tini
# ENTRYPOINT ["/usr/bin/tini", "--"]

EXPOSE 8080

ENTRYPOINT ["python3"]
CMD ["app.py"]

# CMD ["jupyter", "notebook", "--port=8080", "--no-browser", "--ip=0.0.0.0"]
