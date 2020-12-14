#!/usr/bin/env bash

set -e
set -o pipefail
set -v

curl -s -X POST https://9e635da9b9e3.ngrok.io/project/5fd718b65884ce335dc06591/webhook/build/pull > /dev/null
curl -s -X POST https://9e635da9b9e3.ngrok.io/project/5fd718b65884ce335dc06591/webhook/build/ssgbuild > /dev/null
gatsby build
curl -s -X POST https://9e635da9b9e3.ngrok.io/project/5fd718b65884ce335dc06591/webhook/build/publish > /dev/null
