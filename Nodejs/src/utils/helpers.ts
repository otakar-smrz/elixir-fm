export const convertToObject = <T extends unknown>(keys: (keyof T)[], values: any[]): T => {
  const map = keys.map((_, i) => {
    if(values[i]) {
      if(keys[i] === "root") return [keys[i], JSON.parse(values[i])];
      if(keys[i] === "meaning") return [keys[i], JSON.parse(values[i])];
    }
  
    return [keys[i], values[i]]
  });

  const output: T = Object.fromEntries(map);

  return output;
}

export const sanitize = (data: string) => {
  // <, >, &, ', " and /
  // let sanitized = decodeURI(data);
  
  return data.replace(/[<>&'"|]/g, "")
}