#!/usr/bin/env bash


cd "var/src/easy-large"


libime_tabledict -d easy-large.main.dict dump-easy-large.txt


cd "$OLDPWD"
