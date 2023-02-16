import { LookupEntity, LookupRes } from "../../types";
import { convertToObject } from "../helpers";

interface CustomLookupEntity {
  _ref1: string;
  _ref2: string;
  tag: string;
  meaning: string[];
}
interface OutputLookupEntity {
  code: string;
  type: string;
  meaning: string[];
}

export const parseLookup = (output: string, wordType: any): LookupRes => {
  const keys: (keyof CustomLookupEntity)[] = ["_ref2", "tag", "meaning"];

  const indexOfEntry = output.indexOf("\t");

  const originalInput = output.slice(0, output.indexOf("\t"));
  const string = output.substring(indexOfEntry);
  const entries = string.split("\n");

  const medium: OutputLookupEntity[] = [];

  entries.forEach((entry, i) => {
    let split: string | string[] = entry.split("\t");
    split = split.slice(1);
    split = [split[1], split[2], split[6]];
    const object = convertToObject<OutputLookupEntity>(keys, split);

    const { length } = split;
    // Clear empty lines
    if (
      !object.type ||
      length === 0 ||
      (!object?.type?.startsWith("V") &&
        !object?.type?.startsWith("N") &&
        !object?.type?.startsWith("A"))
    ) {
      return;
    }

    // Main entries

    if (object?.type?.startsWith(wordType)) {
      // if word type is set we return only results corresponding resultsçç
      medium.push(object);
      return;
    }
    if (typeof wordType === "undefined") medium.push(object); // when no word type is set we return all
    return;
  });

  return {
    input: originalInput,
    output: medium,
  };
};
