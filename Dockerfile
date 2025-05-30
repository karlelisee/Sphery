# Étape 1 : base officielle Node.js
FROM node:20

# Étape 2 : définir le répertoire de travail dans le conteneur
WORKDIR /app

# Étape 3 : copier les fichiers de dépendances et installer
COPY package*.json ./
RUN npm install

# Étape 4 : copier le reste du projet
COPY . .

# Étape 5 : exposer le port (ex: 3000)
EXPOSE 3000

# Étape 6 : lancer le serveur
CMD ["npm", "run", "start"]
