return {
  {
    prefix = "st",
    body = {
      "#include <stdio.h>",
      "#include <stdlib.h>",
      "",
      "int main(int argc, char *argv[]) {",
      "\t$0",
      "\treturn EXIT_SUCCESS;",
      "}"
    }
  },
  {
    prefix = "stv",
    body = {
      "#include <stdio.h>",
      "#include <stdlib.h>",
      "",
      "int main(void) {",
      "\t$0",
      "\treturn EXIT_SUCCESS;",
      "}"
    }
  },
  {
    prefix = "#inc",
    body = "#include <$0>"
  },
  {
    prefix = "#incl",
    body = "#include \"$0\""
  },
  {
    prefix = "#def",
    body = "#define ${1:MACRO}"
  },
  {
    prefix = "#deff",
    body = "#define ${1:MACRO}($2) ($3)"
  },
  {
    prefix = "#if",
    body = {
      "#if ${1:0}",
      "$0",
      "#endif /* if $1 */"
    }
  },
  {
    prefix = "#ifdef",
    body = {
      "#ifdef ${1:MACRO}",
      "$0",
      "#endif /* ifdef $1 */"
    }
  },
  ["#ifndef"] = {
    prefix = "#ifndef",
    body = {
      "#ifndef ${1:MACRO}",
      "$0",
      "#endif /* ifndef $1 */"
    }
  },
  {
    prefix = "#once",
    body = {
      "#ifndef ${1:FILE}_H",
      "#define $1_H",
      "$0",
      "",
      "#endif /* end of include guard: $1_H */"
    }
  },
  {
    prefix = "#once",
    body = "#pragma once"
  },
  {
    prefix = "#nocpp",
    body = {
      "#ifdef __cplusplus",
      "extern \"C\" {",
      "#endif",
      "$0",
      "",
      "#ifdef __cplusplus", "} /* extern \"C\" */",
      "#endif"
    }
  },
  {
    prefix = "#err",
    body = "#error \"$0\""
  },
  {
    prefix = "#warn",
    body = "#warning \"$0\""
  },
  {
    prefix = "if",
    body = {
      "if (${1:true}) {$0",
      "}"
    }
  },
  {
    prefix = "ifelse",
    body = {
      "if (${1:true}) {$2",
      "} else {$0",
      "}"
    }
  },
  {
    prefix = "else",
    body = {
      "else {$0",
      "}"
    }
  },
  {
    prefix = "elseif",
    body = {
      "else if (${1:true}) {$0",
      "}"
    }
  },
  {
    prefix = "switch",
    body = {
      "switch (${1:expression}) {$0",
      "}"
    }
  },
  {
    prefix = "case",
    body = "case ${1:0}:$0"
  },
  {
    prefix = "default",
    body = "default:$0"
  },
  {
    prefix = "while",
    body = {
      "while (${1:true}) {$0",
      "}"
    }
  },
  {
    prefix = "do",
    body = {
      "do {$0",
      "} while (${1:false});"
    }
  },
  {
    prefix = "return",
    body = "return ${1:0};"
  },
  {
    prefix = "exit",
    body = "exit(${1:EXIT_FAILURE});"
  },
  {
    prefix = "for",
    body = {
      "for ($1;$2;$3) {$0",
      "}"
    }
  },
  {
    prefix = "forc",
    body = {
      "for (${1:size_t} ${2:i} = ${3:0}; $2 < ${4:count}; $2${5:++}) {$0",
      "}"
    }
  },
  {
    prefix = "forg",
    body = {
      "for (${1:size_t} ${2:i} = ${3:1}; $2 <= ${4:last}; $2${5:++}) {$0",
      "}"
    }
  },
  {
    prefix = "fora",
    body = {
      "for (int ${1:i} = ${2:1}; $1 < argc; $1++) {$0",
      "}"
    }
  },
  {
    prefix = "typedef",
    body = "typedef ${1:void} ${2:Emptiness};"
  },
  {
    prefix = "typedeff",
    body = "typedef $0;"
  },
  {
    prefix = "typedefst",
    body = "typedef struct $1 ${1:Box};"
  },
  {
    prefix = "typedefun",
    body = "typedef union $1 ${1:Cell};"
  },
  {
    prefix = "struct",
    body = {
      "struct ${1:MyStruct} {$0",
      "};"
    }
  },
  {
    prefix = "typestruct",
    body = {
      "typedef struct $1 ${1:Box};",
      "struct $1 {$0", "};"
    }
  },
  {
    prefix = "union",
    body = {
      "union ${1:MyUnion} {$0",
      "};"
    }
  },
  {
    prefix = "typeunion",
    body = {
      "typedef union $1 ${1:Cell};",
      "union $1 {$0", "};"
    }
  },
  {
    prefix = "enum",
    body = "enum $1{ $0 };"
  }
}
