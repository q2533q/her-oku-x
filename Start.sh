#!/bin/bash

sed -i "s/PORT/${PORT}/g" /app/config.json
chmod -R 777 /app
/app/x
