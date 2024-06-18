#!/usr/bin/env bash

export DRONE_GITHUB_CLIENT_ID=Ov23li4q2NFpr03CFb2N

export DRONE_GITHUB_CLIENT_SECRET=549fe1d46e9a612d66e34c3edba96f979894cff7
export DRONE_GITHUB_ADMIN=OmarMWarraich
export DRONE_SERVER_HOST=cc9f-203-175-73-50.ngrok-free.app

export HOSTNAME=$(hostname)
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${DRONE_GITHUB_ADMIN},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
docker compose up -d
