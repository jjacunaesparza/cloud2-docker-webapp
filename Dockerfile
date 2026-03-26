FROM node:20-alpine

WORKDIR /usr/app

COPY . .
# copia del directorio actual (host) al directorio de WORKDIR (contenedor); por eso se pone . .
RUN npm i
# con run instalo las dependencias en el contenedor
EXPOSE 3000

CMD ["npm", "start"]