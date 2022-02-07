import { ResolveEntity, ResolveRes } from "../../types";
import { convertToObject } from "../helpers";

export const parseResolve = (data: string): ResolveRes => {
  const keys: (keyof ResolveEntity)[] = [
    "_",
    "transcription",
    "tag",
    "inflected",
    "schema",
    "root",
    "shortSchema",
    "lemma",
    "_ref",
    "meaning"
  ];
  
  const rows = data.split("\n");
  const entries = rows.map(item => item.split("\t"));
  const cleanEntries = entries.filter(entry => entry.length > 1);

  const result: ResolveRes = {};
  let currentGroup = "";

  while(cleanEntries.length > 0) {
    const current = cleanEntries.shift();

    if(current?.[0].trim()) {
      currentGroup = current[0];
      result[currentGroup] = [];
    }

    if(current) {
      const output: ResolveEntity = convertToObject<ResolveEntity>(keys, current);
      result[currentGroup].push(output);
    }
  }

  return result;
}

// const test = "أهلاً\t'AhilaN\tA-----MS4I\t'AhilaN\tFACiL |<< \"aN\"\t\"' h l\"\tFACiL\t'Ahil\t(534,2)\t[\"get married\"]\n     \t'AhilaN\tA-----MS4I\t'AhilaN\tFACiL |<< \"aN\"\t\"' h l\"\tFACiL\t'Ahil\t(534,5)\t[\"be familiar\"]\n     \t'ahlaN\tN------S4I\t'ahlaN\tFaCL |<< \"aN\"\t\"' h l\"\tFaCL\t'ahl\t(534,21)\t[\"family\",\"people\",\"folk\",\"indigenous people\"]\n     \t'ahlaN\tA-----MS4I\t'ahlaN\tFaCL |<< \"aN\"\t\"' h l\"\tFaCL\t'ahl\t(534,22)\t[\"qualified\"]\n     \t'ahlaN\tI---------\t'ahlaN\tFaCL |<< \"aN\"\t\"' h l\"\tFaCL |<< \"aN\"\t'ahlaN\t(534,23)\t[\"welcome !\"]\n     \t'AhilaN\tA-----MS4I\t'AhilaN\tFACiL |<< \"aN\"\t\"' h l\"\tFACiL\t'Ahil\t(534,27)\t[\"populated\"]\n\nوسهلاً\twa-sahlaN\tC---------\twa\t_____\t\"wa\"\t_____\twa\t(1612,1)\t[\"and\"]\n      \t         \tA-----MS4I\tsahlaN\tFaCL |<< \"aN\"\t\"s h l\"\tFaCL\tsahl\t(8279,28)\t[\"easy\",\"simple\"]\n\n\n";
// parseResolve(test);