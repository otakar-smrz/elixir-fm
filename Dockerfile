# Lite docker run (without build). It assumes executable binaries of elixir are already available

FROM node:14

EXPOSE 3000

WORKDIR /usr/src/app

COPY . .

RUN npm install -ci

# Symlink elixir to be able ot run it directly
RUN cp -s /usr/src/app/Haskell/ElixirFM/build/debian-10/elixir /usr/bin/elixir

# Build server
WORKDIR /usr/src/app/
RUN npm run build

# Run the server
CMD [ "node", "./Nodejs/build/index.js" ]