FROM python:3.7.8-slim-stretch
WORKDIR /app

COPY requirements.txt .
# hadolint ignore=DL3013
RUN pip install --upgrade pip && pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 80
CMD [ "python", "app.py" ]

COPY . .