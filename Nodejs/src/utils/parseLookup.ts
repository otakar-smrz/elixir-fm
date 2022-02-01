import { convertToObject } from "./helpers";

export const parseLookup = (output: string) => {
  const keys = ["_", "_1", "_2", "tag", "transcription", "root", "form", "meaning", "stem"];

  const indexOfEntry = output.indexOf("\t");

  const originalInput = output.slice(0, output.indexOf("\t"));
  const string = output.substring(indexOfEntry);

  const entries = string.split("\n");

  const medium: any[] = [];

  entries.forEach((entry, i) => {
    const split = entry.split("\t");
    const object = convertToObject(keys, split);
    const { length } = split;

    if (length > 7) {
      medium.push({ ...object, variants: [] });
      return;
    }

    medium[medium.length - 1]?.variants.push(object);
    return;
  })

  return {
    input: originalInput,
    output: medium
  }
}