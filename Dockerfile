FROM node

ENV DISCORD_TOKEN       ""
ENV DISCORD_GUILD       ""
ENV DISCORD_CHANNEL     ""
ENV SERVER_PORT         27015

RUN mkdir /app
RUN git clone https://github.com/marceltransier/ttt_discord_bot.git /app
RUN npm install --prefix /app/discord_bot

ADD docker/entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

ENTRYPOINT /app/entrypoint.sh