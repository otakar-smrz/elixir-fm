# API Readme

For development run each command in separate terminal:

```sh
cd ./Nodejs/

npm run watch # compiles typescript
npm run start # runs server locally
```

To prepare docker image and run the server from docker:

```sh
cd __project_root__

npm run docker:build && npm run docker:run
```

This will build a docker image, but it will not compile Elixir itself. Elixir
must be either already build inside `Haskell/ElixirFM/build` or can be build
inside the docker image using this command:

```sh
npm run docker:build:full && docker run full
```

Note that the latter option is quite time and resource consuming (ca 30 minutes).
The final image is also quite sizable - 4.3GB compared to 1GB if Elixir binaries
are built in advance and then copied to the image. Building images in docker on
the other hand ensures the best compatibility, should for example the version of
the docker OS change, and the best level of security.

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
```

### Derive

```sh
  echo "(1224,1)", 'N---------', '[VA]---------' | elixir derive
```

### Lookup

GET /lookup/

```sh
  echo "مدرسة" | elixir lookup
  echo "book" | elixir lookup
```
