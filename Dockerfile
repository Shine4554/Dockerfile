FROM node:20-bullseye-slim

RUN apt-get update && apt-get install -y \
    ffmpeg \
    git \
    && rm -rf /var/lib/apt/lists/*

# Clone ton fork
RUN git clone https://github.com/Shine4554/OVL-MD-V2.git /ovl_bot

WORKDIR /ovl_bot

RUN npm install

EXPOSE 8000

# Démarrage avec le script "Ovl"
CMD ["npm", "run", "Ovl"]
