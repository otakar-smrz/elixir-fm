import { exec } from "child_process";
import { RequestHandler } from "express";
import { LookupRes } from "../../types";
import { sanitize } from "../../utils/helpers";
import { parseLookup } from "../../utils/parsers/parseLookup";

export const root: RequestHandler = (req, res) => {
  const {query} = req.params;

  if(!query) {
    res.sendStatus(404)
    res.json({
      status: res.statusCode,
      reason: res.statusMessage
    })
  }

  const sanitized = sanitize(query);

  exec(`echo "${sanitized}" | elixir lookup`, (error, stdout, stderr) => {
    if (error) {
      console.error(`exec error: ${error}`);
      return;
    }

    if(stderr) console.error(`stderr: ${stderr}`);

    const lookupRes: LookupRes = parseLookup(stdout);

    const roots = lookupRes.output.map((item) => item.root);
    const uniqueRoots = Array.from(new Set(roots));

    res.json({
      status: res.statusCode,
      result: uniqueRoots
    })
  });
}