# Example shell commands

api/v1/

## Resolve

GET /resolve/

```sh
  echo "اقرأ الدرس الأول" | elixir resolve
  echo "أهلاً وسهلاً" | elixir resolve
```

## Inflect

```sh
  echo "(1224,[1,5])", 'V[PI]I--3-S--', 'VCJ-------' | elixir inflect
```

## Derive

```sh
  echo "(1224,1)", 'N---------', '[VA]---------' | elixir derive
```

## Lookup

GET /lookup/

```sh
  echo "مدرسة" | elixir lookup
  echo "book" | elixir lookup
```
