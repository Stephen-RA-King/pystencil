FROM python:3.9-alpine
WORKDIR /apps/pystencil/
COPY src/pystencil/. .
COPY requirements/development.txt .
RUN ["pip", "install",  "--no-cache-dir", "-r", "development.txt"]
CMD ["python", "pystencil.py"]
