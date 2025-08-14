FROM python:3.12

WORKDIR /Users/petahiam/PycharmProjects/DataLoader

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]