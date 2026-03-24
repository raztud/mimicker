FROM python:3.12-slim

WORKDIR /app

COPY pyproject.toml ./
COPY mimicker/ ./mimicker/

RUN pip install --no-cache-dir .

EXPOSE 8080

CMD ["python", "-c", "from mimicker.mimicker import mimicker; import signal; s = mimicker(8080); signal.pause()"]
