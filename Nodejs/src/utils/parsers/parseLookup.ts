import { LookupEntity, LookupRes } from "../../types";
import { convertToObject } from "../helpers";

export const parseLookup = (output: string): LookupRes => {
  const keys: (keyof LookupEntity)[] = ["_1", "_2", "tag", "transcription", "root", "form", "meaning", "stem"];

  const indexOfEntry = output.indexOf("\t");

  const originalInput = output.slice(0, output.indexOf("\t"));
  const string = output.substring(indexOfEntry);
  const entries = string.split("\n");

  const medium: LookupEntity[] = [];

  entries.forEach((entry, i) => {
    let split: string | string[] = entry.split("\t");
    split = split.slice(1);

    const object = convertToObject<LookupEntity>(keys, split);
    const { length } = split;

    // Main entries
    if (length > 6) {
      medium.push({ ...object, variants: [] });
      return;
    }

    // Clear empty lines
    if(length === 0) return;

    // Subentries
    medium[medium.length - 1]?.variants.push(object);
    return;
  })

  return {
    input: originalInput,
    output: medium
  }
}