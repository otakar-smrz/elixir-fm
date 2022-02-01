import { exec } from "child_process";
import { RequestHandler } from "express";
import { parseLookup } from "../../utils/parseLookup";

export const lookup: RequestHandler = (req, res) => {
  const {data} = req.params;

  if(!data) {
    res.sendStatus(404)
    res.json({
      status: res.statusCode,
      reason: res.statusMessage
    })
  }

  exec(`echo "${data}" | elixir lookup`, (error, stdout, stderr) => {
    if (error) {
      console.error(`exec error: ${error}`);
      return;
    }

    // console.log(`stdout: ${stdout}`);
    if(stderr) console.error(`stderr: ${stderr}`);

    res.json({
      status: res.statusCode,
      result: parseLookup(stdout)
    })
  });
}