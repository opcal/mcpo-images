FROM python:3.12-slim
WORKDIR /app
RUN pip install mcpo uv

COPY fetch/entrypoint.sh /app/

ENTRYPOINT [ "/app/entrypoint.sh" ]