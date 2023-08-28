FROM node:14

# Creo una directory per l'applicazione
WORKDIR /app

# Copio i file del pacchetto nell'applicazione
COPY package*.json ./

# Installo i pacchetti delle dipendenze
RUN npm install

# Copia il resto dei file dell'applicazione
COPY . .

EXPOSE 3000

# Avvio l'applicazione
CMD ["node", "server.js"]