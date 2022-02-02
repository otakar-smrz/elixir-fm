import { convertToObject } from "../helpers";

export const parseLookup = (output: string) => {
  const keys = ["_1", "_2", "tag", "transcription", "root", "form", "meaning", "stem"];

  const indexOfEntry = output.indexOf("\t");

  const originalInput = output.slice(0, output.indexOf("\t"));
  const string = output.substring(indexOfEntry);
  const entries = string.split("\n");

  const medium: any[] = [];

  entries.forEach((entry, i) => {
    let split: string | string[] = entry.split("\t");
    split = split.slice(1);

    const object = convertToObject(keys, split);
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