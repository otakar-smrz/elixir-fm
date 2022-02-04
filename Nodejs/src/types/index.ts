export interface LookupEntity {
  _1: string,
  _2: string,
  tag: string,
  transcription: string,
  root: string,
  form: string,
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
  _transcription: string,
  _form: string,
  root: string,
  form: string,
  lemma: string,
  _2: string,
  meaning: string[],
}

export interface ResolveRes {
  [key: string]: ResolveEntity[]
}