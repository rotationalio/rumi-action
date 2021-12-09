FROM python:3.7

WORKDIR /rumi

COPY . .

RUN pip install rumi-i18n

CMD ["python", "/rumi/action.py"]