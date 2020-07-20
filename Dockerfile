FROM python:3.8-slim

LABEL "Maintainer"="RunningRagdoll"

COPY . /pytest-calculator

WORKDIR /pytest-calculator

RUN pipenv install -r requirements.txt

RUN ["pytest", "-v",  "-junitxml=reports/result.xml"]

CMD tail -f /dev/null