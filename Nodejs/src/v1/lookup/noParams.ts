import { RequestHandler } from "express";

export const handleNoParams: RequestHandler = (req, res) => {
  const {data} = req.params;

  if(!data) {
    res.json({
      status: 400,
      reason: "API params missing."
    })
  }
}