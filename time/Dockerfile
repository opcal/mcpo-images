FROM python:3.12-slim
WORKDIR /app
RUN pip install mcpo uv

COPY time/entrypoint.sh /app/

ENTRYPOINT [ "/app/entrypoint.sh" ]