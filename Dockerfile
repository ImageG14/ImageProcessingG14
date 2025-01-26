FROM python:3.11.6-slim
WORKDIR /app
COPY requirements.txt .
COPY main.py .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8000
CMD ["uvicorn", "main.py","--host","0.0.0.0","--port","8000"]
