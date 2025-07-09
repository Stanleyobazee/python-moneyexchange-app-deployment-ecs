FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
# copy requirements.txt first to Leverage Docker cache
# this allows Docker to cache the layer with the dependencies and only rebuild it when the requirements change

RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

EXPOSE 5000

CMD ["python", "app.py"]
