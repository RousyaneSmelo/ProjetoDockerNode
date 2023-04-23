# Imagem base
FROM node:alpine

# Diretório de trabalho
WORKDIR /app

# Copia os arquivos do aplicativo
COPY package.json .
COPY index.js .

# Instala as dependências
RUN npm install

# Expõe a porta 3000
EXPOSE 3000

# Comando padrão para executar o aplicativo
CMD ["npm", "start"]
