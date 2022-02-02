export const convertToObject = (keys: string[], values: any[]) => {
  return Object.fromEntries(keys.map((_, i) => {
    if(values[i]) {
      if(keys[i] === "root") return [keys[i], JSON.parse(values[i])];
      if(keys[i] === "meaning") return [keys[i], JSON.parse(values[i])];
    }
  
    return [keys[i], values[i]]
  }));
}

export const sanitize = (data: string) => {
  // <, >, &, ', " and /
  // let sanitized = decodeURI(data);
  
  return data.replace(/[<>&'"|]/g, "")
}