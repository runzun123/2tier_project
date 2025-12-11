FROM python:3.11-slim
WORKDIR /app
RUN apt-get update && apt-get intsall -y gcc default-libmysqlclient-dev pkg-congig && \
    rm-rf /var/lib/apt/lists/*
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 5000
CMD ["python", "app.py"]