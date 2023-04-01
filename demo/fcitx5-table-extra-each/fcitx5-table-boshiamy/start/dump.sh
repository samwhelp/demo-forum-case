#!/usr/bin/env bash


cd "var/src/boshiamy"


libime_tabledict -d boshiamy.main.dict dump-boshiamy.txt


cd "$OLDPWD"
