# Usa la imagen oficial de Node.js como base
FROM node:20-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el package.json y package-lock.json al contenedor
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de la aplicación al contenedor
COPY . .

# Construye la aplicación
RUN npm run build

# Expone el puerto que la aplicación utilizará
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "start"]
