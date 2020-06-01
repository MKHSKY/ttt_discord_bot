#/bin/bash

cd /app/discord_bot
cp config.json.example config.json

sed -i "s/\"token\": \"\"/\"token\": \"$DISCORD_TOKEN\"/g" config.json
sed -i "s/\"guild\": \"\"/\"guild\": \"$DISCORD_GUILD\"/g" config.json
sed -i "s/\"channel\": \"\"/\"channel\": \"$DISCORD_CHANNEL\"/g" config.json
sed -i "s/\"port\": \"37405\"/\"port\": \"$SERVER_PORT\"/g" config.json
cat config.json

node .