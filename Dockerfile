FROM python:3.10

COPY requirements.txt .
RUN pip3 install --upgrade pip && \
    pip3 install -r requirements.txt && \
    pip install jupyterlab

WORKDIR /src
COPY /src /src