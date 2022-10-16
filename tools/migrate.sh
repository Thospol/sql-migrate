#!/usr/bin/env bash
source "./tools/util.sh"

if ! which migrate >/dev/null; then
    echo "golang-migrate is not installed, please run 'brew install golang-migrate'"
    exit 1
fi

printf "DATABASE HOST: "
read -r HOST
printf "DATABASE USERNAME: "
read -r USERNAME
printf "DATABASE PASSWORD: "
read -r -s PASSWORD
echo
printf "DATABASE NAME: "
read -r DATABASE

migrate -database "postgres://$USERNAME:$(rawurlencode "$PASSWORD")@$HOST/$DATABASE?sslmode=disable" -path db/migrations "$@"
