FROM python:3.11

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

COPY ./app /app
RUN python Switchbot.py

ENTRYPOINT [ "python", "main.py" ]