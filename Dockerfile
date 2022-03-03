FROM node:17.2.0-alpine
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
EXPOSE 3000
ENV NPM_CONFIG_LOGLEVEL info
ENV NODE_ENV production
ENV PORT 3000
CMD ["npm", "start"]
