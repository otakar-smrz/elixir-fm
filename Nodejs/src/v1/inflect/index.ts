import { exec } from "child_process";
import { RequestHandler } from "express";
import QueryString from "qs";

export const inflect: RequestHandler = (req, res) => {
  const { query, opts } = req.params;
  const { gender } = req.query;
  if (!query) {
    res.sendStatus(404);
    res.json({
      status: res.statusCode,
      reason: res.statusMessage,
    });
  }

  exec(`echo "${query}" | elixir inflect `, (error, stdout, stderr) => {
    if (error) {
      console.error(`exec inflect error: ${error}`);
      return;
    }
    if (stderr) console.error(`stderr: ${stderr}`);

    const rows = stdout.split("\n");
    const entries = rows.map((item) => item.split("\t"));
    const cleanEntries = entries.filter((entry) => entry.length > 1);

    let results = cleanEntries.map((item) => {
      return {
        type: buildSiwarTypeMap(item[1], gender),
        decoded: item[2].trim(),
      };
    });

    const toBeDocodedString = results.map((x) => x.decoded).join(" ");

    const decodeCommandString = toBeDocodedString.replace(/`/g, "\\`");

    exec(
      `echo ${decodeCommandString} | decode tex `,
      (error, stdout, stderr) => {
        if (error) {
          console.error(`exec inflect error: ${error}`);
          return;
        }
        if (stderr) console.error(`stderr: ${stderr}`);
        const arabic_trans = stdout.replace(/\\/g, "").split(" ");

        results = results.map((item, i) => {
          item.decoded = arabic_trans[i].trim();
          return item;
        });
        res.json({
          status: res.statusCode,
          result: results,
        });
      }
    );
  });
};

function execWrapper(
  command: string,
  options = {},
  otherData: String[],
  gender:
    | string
    | QueryString.ParsedQs
    | string[]
    | QueryString.ParsedQs[]
    | undefined
) {
  return new Promise((resolve, reject) => {
    exec(command, options, (error, out, stderr) => {
      if (error) return reject(error);
      //   resolve({ out: [...otherData, out.trim()], err: stderr });
      resolve({
        encoded: otherData[2],
        type: buildSiwarTypeMap(otherData[1], gender),
        decoded: out.trim(),
      });
    });
  });
}

type wordFormsDataType = {
  gender: string;
  numberWordForm: string;
  person: string;
  voice: string;
  def: string;
  aspect: string;
  wordType: string;
};
function buildSiwarTypeMap(code: String, gender: any) {
  const wordFormsData: wordFormsDataType = {
    gender: "",
    person: "",
    voice: "",
    def: "",
    aspect: "",
    numberWordForm: "",
    wordType: "",
  };
  const array = code.split("");

  if (array[0] === "N") {
    wordFormsData.wordType = array[0];
    wordFormsData.def = array[9] === "I" ? "i" : array[9] === "D" ? "d" : "d2";
    wordFormsData.gender = gender;
    wordFormsData.numberWordForm =
      array[7] === "S" ? "1" : array[7] === "D" ? "2" : "3";
  } else if (array[0] === "V") {
    wordFormsData.wordType = array[0];

    wordFormsData.gender = array[6] === "F" ? "f" : "m";
    wordFormsData.numberWordForm =
      array[7] === "S" ? "1" : array[7] === "D" ? "2" : "3";
    wordFormsData.voice = array[3] === "P" ? "p" : "a";
    wordFormsData.aspect = array[1] === "I" ? "S" : array[1];
    wordFormsData.person = array[5];
  } else if (array[0] === "A") {
    // TO Do
    wordFormsData.wordType = array[0];
    wordFormsData.def = array[9] === "I" ? "i" : array[9] === "D" ? "d" : "d2";
    wordFormsData.gender = gender;
    wordFormsData.numberWordForm =
      array[7] === "S" ? "1" : array[7] === "D" ? "2" : "3";
  }
  return wordFormsData;
}
