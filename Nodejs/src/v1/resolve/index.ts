import { exec } from "child_process";
import { RequestHandler } from "express";
import { sanitize } from "../../utils/helpers";
import { parseResolve } from "../../utils/parsers/parseResolve";


export const resolve: RequestHandler = (req, res) => {
  const {data} = req.params;

  if(!data) {
    res.sendStatus(404)
    res.json({
      status: res.statusCode,
      reason: res.statusMessage
    })
  }

  const sanitized = sanitize(data);

  exec(`echo "${sanitized}" | elixir resolve`, (error, stdout, stderr) => {
    if (error) {
      console.error(`exec error: ${error}`);
      return;
    }

    // console.log(`stdout: ${stdout}`);
    if(stderr) console.error(`stderr: ${stderr}`);

    res.json({
      status: res.statusCode,
      result: parseResolve(stdout)
    })
  });
}