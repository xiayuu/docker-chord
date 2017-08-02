FROM python:2.7-slim

WORKDIR /app

add ./build/p2pviewer/p2pviewer /app

EXPOSE 8089

CMD ["python", "socketserver.py"]

