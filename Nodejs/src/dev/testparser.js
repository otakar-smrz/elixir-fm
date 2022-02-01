const output = "book\t(419,[45])\t(419,45)\tN---------\tta'lIf\t\"' l f\"\tTaFCIL\t[\"publication\",\"book\"]\t[II]\n    \t          \t        \t-------P--\tta'AlIf\t\"' l f\"\tTaFACIL\n    \t(2409,[1])\t(2409,1)\tX---------\tbUk\t\"bUk\"\t_____\t[\"Book\"]\t[]\n    \t(4628,[13,14,15])\t(4628,13)\tN---------\t.gallAfaT\t\".g l f\"\tFaCCAL |< aT\t[\"book - binding machine\"]\t[]\n    \t                 \t(4628,14)\tN---------\tmu.gallif\t\".g l f\"\tMuFaCCiL\t[\"book binder\"]\t[II]\n    \t                 \t         \t-------P--\tmu.gallifUn\t\".g l f\"\tMuFaCCiL |< Un\n    \t                 \t         \t------F---\tmu.gallifaT\t\".g l f\"\tMuFaCCiL |< aT\n    \t                 \t(4628,15)\tN---------\tmu.gallifaT\t\".g l f\"\tMuFaCCiL |< aT\t[\"book binder\"]\t[II]\n    \t                 \t         \t-------P--\tmu.gallifAt\t\".g l f\"\tMuFaCCiL |< At\n    \t(4822,[22])\t(4822,22)\tN---------\tmufakkiraT\t\"f k r\"\tMuFaCCiL |< aT\t[\"pocket book\"]\t[II]\n    \t           \t         \t-------P--\tmufakkirAt\t\"f k r\"\tMuFaCCiL |< At\n    \t(5156,[31,34])\t(5156,31)\tN---------\tkitAb\t\"k t b\"\tFiCAL\t[\"book\"]\t[]\n    \t              \t         \t-------P--\tkutub\t\"k t b\"\tFuCuL\n    \t              \t(5156,34)\tA---------\tkutubIy\t\"k t b\"\tFuCuL |< Iy\t[\"book - related\"]\t[]\n    \t(5970,[30])\t(5970,30)\tN---------\tdalIl\t\"d l l\"\tFaCIL\t[\"directory\",\"manual\",\"guide - book\"]\t[]\n    \t           \t         \t-------P--\tdalIlAt\t\"d l l\"\tFaCIL |< At\n    \t(8117,[22])\t(8117,22)\tN---------\tsifr\t\"s f r\"\tFiCL\t[\"book\"]\t[I]\n    \t           \t         \t-------P--\t'asfAr\t\"s f r\"\tHaFCAL\n\n";


const indexOfEntry = output.indexOf("\t");

const originalInput = output.slice(0, output.indexOf("\t"));
const string = output.substring(indexOfEntry);

// console.log("Original word: ",entry);
// console.log(string);

const entries = string.split("\n");

const medium = [];
let parentEntryId = 0;

// 0: ?
// 1: ?
// 2: ?
// 3: tag
// 4: transcription
// 5: root
// 6: form
// 7. meaning
// 8. stem / class
const keys = ["_", "_1", "_2", "tag", "transcription", "root", "form", "meaning", "stem"];

const convertToObject = (keys, values) => {
  return Object.fromEntries(keys.map((_, i) => [keys[i], values[i]]));
}

entries.forEach((entry, i) => {
  const split = entry.split("\t");
  const object = convertToObject(keys, split);
  const {length} = split;
  
  if(length > 7) {
    medium.push({...object, variants: []});
    return;
  }

  medium[medium.length - 1]?.variants.push(object);
  return;
})


console.log(medium);