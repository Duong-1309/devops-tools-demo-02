FROM python:3.10-alpine

WORKDIR /app/

COPY src/ /app/

COPY requirements.txt /app/
RUN chmod +x requirements.txt

RUN pip install --upgrade pip && pip install -r requirements.txt

ENTRYPOINT ["uvicorn", "main:app", "--port=8000"]