# Utilise une image Node.js légère
FROM node:20-bullseye-slim

# Installe les dépendances nécessaires
RUN apt-get update && apt-get install -y \
    ffmpeg \
    git \
    && rm -rf /var/lib/apt/lists/*

# Clone ton fork (remplace l’URL par ton repo perso)
RUN git clone https://github.com/bruno/OVL-MD-V2.git /ovl_bot

# Définit le dossier de travail
WORKDIR /ovl_bot

# Installe les dépendances Node.js
RUN npm install

# Expose le port (Render utilise 8000 par défaut)
EXPOSE 8000

# Commande de démarrage du bot
CMD ["npm", "run", "Ovl"]
