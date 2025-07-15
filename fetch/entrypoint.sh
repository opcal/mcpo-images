#!/bin/bash

set -e

MCPO_OPTION="--host 0.0.0.0"

if [[ ! -z "${SERVER_PORT}" ]]; then
    MCPO_OPTION=" ${MCPO_OPTION} --port ${SERVER_PORT}"
fi

if [[ ! -z "${API_KEY}" ]]; then
    MCPO_OPTION=" ${MCPO_OPTION} --api-key ${API_KEY}"
fi

FETCH_OPTION=""

if [[ ! -z "${PROXY_URL}" ]]; then
    FETCH_OPTION="--proxy-url=${PROXY_URL}"
fi

uvx mcpo ${MCPO_OPTION} -- uvx mcp-server-fetch ${FETCH_OPTION}