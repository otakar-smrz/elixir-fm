export const convertToObject = <T extends unknown>(
  keys: any[],
  values: any[]
): T => {
  const map = keys.map((_, i) => {
    if (values[i]) {
      if (keys[i] === "_ref2") return ["code", values[i]];
      if (keys[i] === "tag") {
        if (values[i].startsWith("N")) {
          return ["type", "N"];
        } else if (values[i].startsWith("V")) {
          return ["type", "V"];
        } else if (values[i].startsWith("A")) {
          return ["type", "A"];
        }
      }
      if (keys[i] === "meaning") return [keys[i], JSON.parse(values[i])];
    }

    return [keys[i], values[i]];
  });

  const output: T = Object.fromEntries(map);

  return output;
};

export const sanitize = (data: string) => {
  // <, >, &, ', " and /
  // let sanitized = decodeURI(data);

  return data.replace(/[<>&'"|]/g, "");
};
