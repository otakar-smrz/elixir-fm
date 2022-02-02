import { RequestHandler } from "express"

export const getApiMap: RequestHandler = (req, res) => {
  res.json({
    "api/v1": {
      "lookup": {
        "GET": "/api/v1/lookup/:data"
      },
      "resolve": {
        "GET": "/api/v1/resolve/:data"
      },
    }
  })
}