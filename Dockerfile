# Official Python image use karenge
FROM python:3.9

# Working directory set karenge
WORKDIR /app

# Dependencies copy karenge
COPY requirements.txt .

# Dependencies install karenge
RUN pip install --no-cache-dir -r requirements.txt

# Code copy karenge
COPY . .

# FastAPI app run karne ka command
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
