
FROM fusuf/whatsasena:latest
RUN git clone https://github.com/sanuwaofficial/AquaBot /root/aquabot
WORKDIR /root/aquabot/
ENV TZ=Europe/Istanbul
RUN yarn add supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
