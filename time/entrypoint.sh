#!/bin/bash

set -e

MCPO_OPTION="--host 0.0.0.0"

if [[ ! -z "${SERVER_PORT}" ]]; then
    MCPO_OPTION=" ${MCPO_OPTION} --port ${SERVER_PORT}"
fi

if [[ ! -z "${API_KEY}" ]]; then
    MCPO_OPTION=" ${MCPO_OPTION} --api-key ${API_KEY}"
fi

TIME_OPTION=""

if [[ ! -z "${LOCAL_TIMEZONE}" ]]; then
    TIME_OPTION="--local-timezone=${LOCAL_TIMEZONE}"
fi

uvx mcpo ${MCPO_OPTION} -- uvx mcp-server-time ${TIME_OPTION}