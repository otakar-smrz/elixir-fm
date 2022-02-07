# This is full docker container with haskell libraries and elixir build on docker included
# It ensures best compatibility with the docker, but it is an inefficient way since it 
# takes long time (approx 20min) to build and the final image takes considerable amount of space 
# (about 4.5GB).

FROM haskell:8

WORKDIR /usr/src/app

COPY . .

# Install node and node packeges
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs
RUN npm install -ci

# Build ElixirFM
WORKDIR /usr/src/app/Haskell/ElixirFM

RUN cabal update
RUN cabal install

# Build the server
WORKDIR /usr/src/app/
RUN npm run build

# Run the server
CMD [ "node", "./Nodejs/build/index.js" ]