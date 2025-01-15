return {
  {
    prefix = "setInterval",
    body = {
      "setInterval(() => {",
      "\t$0",
      "}, ${1:interval});" }
  },
  {
    prefix = "setTimeout",
    body = {
      "setTimeout(() => {",
      "\t$0",
      "}, ${1:interval});" }
  },
  {
    prefix = "log",
    body = "console.log($0)"
  },
  {
    prefix = "warn",
    body = "console.warn($0)"
  },
  {
    prefix = "error",
    body = "console.error($0)"
  },
  {
    prefix = "console.log",
    body = "console.log($0)"
  },
  {
    prefix = "console.warn",
    body = "console.warn($0)"
  },
  {
    prefix = "console.error",
    body = "console.error($0)"
  },
  {
    prefix = "parseInt",
    body = "parseInt($1)"
  },
  {
    prefix = "parseFloat",
    body = "parseFloat($1)"
  },
  {
    prefix = "typeof",
    body = "typeof ${1:source}"
  },
  {
    prefix = "instanceof",
    body = "${1:source} instanceof ${2:Object}"
  },
  {
    prefix = "strict",
    body = "'use strict'"
  },
  {
    prefix = "querySelector",
    body = "${1:document}.querySelector(${2:selector})"
  },
  {
    prefix = "querySelectorAll",
    body = "${1:document}.querySelectorAll(${2:selector})"
  },
  {
    prefix = "getElementById",
    body = "${1:document}.getElementById(${2:id})"
  },
  {
    prefix = "getElementsByTagName",
    body = "${1:document}.getElementsByTagName(${2:tag})"
  },
  {
    prefix = "getElementsByClassName",
    body = "${1:document}.getElementsByClassName(${2:className})"
  },
  {
    prefix = "document.querySelector",
    body = "document.querySelector(${1:selector})"
  },
  {
    prefix = "document.querySelectorAll",
    body = "document.querySelectorAll(${1:selector})"
  },
  {
    prefix = "document.getElementById",
    body = "document.getElementById(${1:id})"
  },
  {
    prefix = "document.getElementsByTagName",
    body = "document.getElementsByTagName(${1:tag})"
  },
  {
    prefix = "document.getElementsByClassName",
    body = "document.getElementsByClassName(${1:className})"
  },
  {
    prefix = "Promise",
    body = "new Promise((res, rej) => {\n\t$0\n})"
  },
  {
    prefix = "Promise.resolve",
    body = "Promise.resolve(${1:value})"
  },
  {
    prefix = "Promise.reject",
    body = "Promise.reject(${1:value})"
  },
  {
    prefix = "Promise.all",
    body = "Promise.all(${1:value})"
  },
  {
    prefix = "then",
    body = "${1:promise}.then((${2:value}) => {\n\t$0\n})"
  },
  {
    prefix = "catch",
    body = "${1:promise}.catch((${2:err}) => {\n\t$0\n})"
  },
  {
    prefix = "finally",
    body = "${1:promise}.finally(() => {\n\t$0\n})"
  },
  {
    prefix = "Object.create",
    body = "Object.create(${1:obj})"
  },
  {
    prefix = "Object.assign",
    body = "Object.assign(${1:dest}, ${2:src})"
  },
  {
    prefix = "Object.entries",
    body = "Object.entries(${1:obj})"
  },
  {
    prefix = "Object.keys",
    body = "Object.keys(${1:obj})"
  },
  {
    prefix = "Object.values",
    body = "Object.values(${1:obj})"
  },
  {
    prefix = "JSON.stringify",
    body = "JSON.stringify($0)"
  },
  {
    prefix = "JSON.parse",
    body = "JSON.parse($0)"
  },
  {
    prefix = "var",
    body = "var ${1:name} = ${2:value}"
  },
  {
    prefix = "let",
    body = "let ${1:name} = ${2:value}"
  },
  {
    prefix = "const",
    body = "const ${1:name} = ${2:value}"
  },
  {
    prefix = "await",
    body = "await $0"
  },
  {
    prefix = "return",
    body = "return $0"
  },
  {
    prefix = "yield",
    body = "yield $0"
  },
  {
    prefix = "class",
    body = {
      "class ${1:Name} {",
      "\tconstructor() {",
      "\t\t$0",
      "\t}",
      "}"
    }
  },
  {
    prefix = "class",
    body = {
      "class ${1:Name} extends ${2:Base} {",
      "\tconstructor() {",
      "\t\t$0",
      "\t}",
      "}"
    }
  },
  {
    prefix = "constructor",
    body = {
      "constructor () {",
      "\t$0",
      "}"
    }
  },
  {
    prefix = "method",
    body = "${1:name}() {\n\t$0\n}"
  },
  {
    prefix = "static",
    body = "static ${1:name} = ${2:value}"
  },
  {
    prefix = "staticmethod",
    body = "static ${1:name}() {\n\t$0\n}"
  },
  {
    prefix = "function",
    body = {
      "function ${1:name}() {",
      "\t$0",
      "}"
    }
  },
  {
    prefix = "async_function",
    body = {
      "async function ${1:name}() {",
      "\t$0",
      "}"
    }
  },
  {
    prefix = "generator_function",
    body = {
      "function * ${1:name}() {",
      "\t$0",
      "}"
    },
  },
  {
    prefix = "get",
    body = "get ${1:property}() {\n\t$0\n}"
  },
  {
    prefix = "set",
    body = "set ${1:property}() {\n\t$0\n}"
  },
  {
    prefix = "getset",
    body = {
      "get ${1:property}() {\n\n}",
      "set ${1:property}(${2:value}) {\n\n}"
    }
  },
  {
    prefix = "this",
    body = "this."
  },
  {
    prefix = "while",
    body = {
      "while (${1:condition}) {",
      "\t$0",
      "}"
    }
  },
  {
    prefix = "dowhile",
    body = {
      "do {",
      "\t$0",
      "} while(${1:condition})"
    }
  },
  {
    prefix = "for",
    body = {
      "for (let ${1:index} = 0; ${1:index} < ${2:array}.length; ${1:index}++) {",
      "\tconst element = ${2:array}[${1:index}];",
      "\t$0",
      "}"
    }
  },
  {
    prefix = "forin",
    body = {
      "for (const ${1:key} in ${2:object}) {",
      "\t$0",
      "}"
    }
  },
  {
    prefix = "forof",
    body = {
      "for (const ${1:element} of ${2:object}) {",
      "\t$0",
      "}"
    }
  },
  {
    prefix = "forawaitof",
    body = {
      "for await (const ${1:iterator} of ${2:object}) {",
      "\t$0",
      "}"
    }
  },
  {
    prefix = "if",
    body = {
      "if (1:condition) {",
      "\t$0",
      "}"
    }
  },
  {
    prefix = "elseif",
    body = {
      "else if (${1:condition}) {",
      "\t$0",
      "}"
    }
  },
  {
    prefix = "else",
    body = {
      "else {",
      "\t$0",
      "}"
    }
  },
  {
    prefix = "switch",
    body = {
      "switch (${1:key}) {",
      "\tcase ${2:value}:",
      "\t\t$0",
      "",
      "\tdefault:",
      "\t\tbreak",
      "}"
    }
  },
  {
    prefix = "ternary",
    body = "${1:condition} ? ${2:true} : ${3:false}"
  },
  {
    prefix = "try",
    body = "try {\n\t$0\n} catch (err) {\n\t\n}"
  },
  {
    prefix = "try_finally",
    body = "try {\n\t$0\n} catch (err) {\n\t\n} finally {\n\t\n}"
  },
  {
    prefix = "throw",
    body = "throw new Error(${0:error})"
  }
}
