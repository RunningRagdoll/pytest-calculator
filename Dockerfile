FROM python:3.8-slim

LABEL "Maintainer"="RunningRagdoll"

COPY . /pytest-calculator

WORKDIR /pytest-calculator

RUN pip install pipenv

RUN pipenv install -r requirements.txt

RUN ["pipenv", "run", "python", "-m", "pytest", "-v",  "-junitxml=reports/result.xml"]

CMD tail -f /dev/null