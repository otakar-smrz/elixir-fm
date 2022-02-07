# API Readme

Unlike other implementations, this was created with the intent to provide
ElixirFM's functionality via REST API. Its current scope is focused on two
modules in particular - lookup and resolve, which serve as the proof of concept
of Elixir's API server.

## Local

If you would like to run local/development version of ElixirFM's API, make sure
that you have already compiled and installed `Haskell/ElixirFM` and that you
have `Node.js` (v14+). For further infofmation see
[Haskell readme](../Haskell/ElixirFM/README.md) and
[Haskell notebook](../Haskell/ElixirFM/README.ipynb).

Afterwards you can proceed with following commands:

```sh
npm install # installs packages

# Run each in separate terminal window
npm run watch # compiles typescript
npm run start # runs server locally
```

Congratulations! If nothing failed, your local server is up and running.
API server is accessible on url `localhost:3030`.

## Docker

Other way to make ElixirFM API run is with docker. This will deal with
most of the installation and compilation process by default, but it might be
quite time and resource consuming, if Elixir is compiled in docker.

### Full build

To prepare docker image, make sure you have docker installed on
your computer, then run the following:

```sh
cd __project_root__

npm run docker:build:full # first run and rebuilds if code changes
npm run docker:run:full # start docker container with the server
```

This command assumes that you have node installed on your computer. However,
if you do not want to install `node`, see `scripts` property in project's
[package.json](../package.json) and run commands aliased with above mentioned
names directly.

Note that `docker:build:full` is quite time and resource consuming operation
(ca 20 minutes). The final image is also quite sizable - 3.7GB compared to 1.1GB
if Elixir binaries are built in advance and then copied to the image. Building
images in docker on the other hand ensures the best compatibility, if for
example the version of the docker OS changes, and the best level of security
since it compiles the code directly from the code in the docker environment.

### Lite build

In case you already have pre-built elixir binaries for `debian`, copy them into
`Haskell/ElixirFM/build/debian10` and run:

```sh
cd __project_root__

npm run docker:build
npm run docker:run
```

This will build a docker image, but it will avoid compiling Elixir itself,
instead, it copies binary from `Haskell/build` directory and installs it to the
system inside newely built docker image.

When image is built and its container is running, API is be available from
`localhost:3030`.

## API routes

For information on API routes visit `localhost:3030`.

<!--
## Example shell commands

api/v1/

### Resolve

GET /resolve/

```sh
  echo "اقرأ الدرس الأول" | elixir resolve
  echo "أهلاً وسهلاً" | elixir resolve
```

### Inflect

```sh
  echo "(1224,[1,5])", 'V[PI]I--3-S--', 'VCJ-------' | elixir inflect

  # NOT WORKING!
  echo "درس", 'V[PI]I--3-S--', 'VCJ-------' | elixir inflect
```

### Derive

```sh
  echo "(1224,1)", 'N---------', '[VA]---------' | elixir derive

  # NOT WORKING!
  echo "درس", 'N---------', '[VA]---------' | elixir derive
```

### Lookup

GET /lookup/

```sh
  echo "مدرسة" | elixir lookup
  echo "book" | elixir lookup
```
-->