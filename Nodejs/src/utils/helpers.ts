export const convertToObject = (keys: string[], values: any[]) => {
  return Object.fromEntries(keys.map((_, i) => [keys[i], values[i]]));
}