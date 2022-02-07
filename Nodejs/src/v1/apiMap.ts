import { RequestHandler } from "express"

export const getApiMap: RequestHandler = (req, res) => {
  res.json({
    "api/v1": {
      "lookup": {
        "desc": "Elixir lookup function",
        "routes": {
          "GET": "/api/v1/lookup/:query"
        }
      },
      "resolve": {
        "desc": "Elixir resolve function",
        "routes": {
          "GET": "/api/v1/resolve/:query"
        }
      },
      "root": {
        "desc": "Retrieve possible roots for query",
        "routes": {
          "GET": "/api/v1/root/:query"
        }
      },
    }
  })
}