# Lite docker run (without build). It assumes executable binaries of elixir are already available

FROM python:2

EXPOSE 3000

WORKDIR /usr/src/app

COPY . .

RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs
RUN npm install -ci

# Symlink elixir to be able ot run it directly
RUN cp -s /usr/src/app/Haskell/ElixirFM/build/debian-10/elixir /usr/bin/elixir

# Install python elixir
WORKDIR /usr/src/app/Python/ElixirFM
RUN python setup.py install

# Test
# RUN python ./test-example/test.py

# Build server
WORKDIR /usr/src/app/
RUN npm run build

# Run the server
CMD [ "node", "./Nodejs/build/index.js" ]