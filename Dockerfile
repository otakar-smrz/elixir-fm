# Lite docker run (without build). It assumes executable binaries of elixir are already available

FROM python:2

WORKDIR /usr/src/app

COPY . .

# Symlink elixir to be able ot run it directly
RUN cp -s /usr/src/app/Haskell/ElixirFM/build/debian-10/elixir /usr/bin/elixir

# Install python elixir
WORKDIR /usr/src/app/Python/ElixirFM

RUN python setup.py install

# Test
# RUN python ./test-example/test.py

# CMD [ "echo", "done" ]
# CMD [ "ls", "-a" ]
# CMD [ "python", "./test-example/test.py" ]