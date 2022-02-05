export interface LookupEntity {
  _ref1: string,
  _ref2: string,
  tag: string,
  transcription: string,
  root: string,
  schema: string,
  meaning: string[],
  stem: string,
  variants: Omit<LookupEntity, "meaning" | "stem" | "variant">[]
}

export interface LookupRes {
  input: string,
  output: LookupEntity[]
}

export interface ResolveEntity {
  _: string;
  transcription: string,
  tag: string,
  inflected: string,
  schema: string,
  root: string,
  shortSchema: string,
  lemma: string,
  _ref: string,
  meaning: string[],
}

export interface ResolveRes {
  [key: string]: ResolveEntity[]
}

export interface EntityResponse<T> {
  token: string;
  variants: T[]
}