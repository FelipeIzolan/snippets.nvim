return {
  {
    prefix = "html5",
    body = {
      "<!DOCTYPE html>",
      "<html lang=\"en\">",
      "\t<head>",
      "\t\t<meta charset=\"UTF-8\">",
      "\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">",
      "\t\t<title>Title</title>",
      "\t</head>",
      "\t<body>",
      "\t\t$0",
      "\t</body>",
      "</html>"
    }
  },
  {
    prefix = "doctype",
    body = "<!DOCTYPE html>"
  },
  {
    prefix = "a",
    body = "<a href=\"$1\">$2</a>"
  },
  {
    prefix = "abbr",
    body = "<abbr title=\"$1\">$2</abbr>"
  },
  {
    prefix = "address",
    body = {
      "<address>",
      "\t$1",
      "</address>"
    }
  },
  {
    prefix = "area",
    body = "<area shape=\"$1\" coords=\"$2\" href=\"$3\" alt=\"$4\">"
  },
  {
    prefix = "article",
    body = {
      "<article>",
      "\t$1",
      "</article>"
    }
  },
  {
    prefix = "aside",
    body = {
      "<aside>",
      "\t$1",
      "</aside>"
    }
  },
  {
    prefix = "audio",
    body = {
      "<audio controls>",
      "\t$1",
      "</audio>"
    }
  },
  {
    prefix = "b",
    body = "<b>$1</b>"
  },
  {
    prefix = "base",
    body = "<base href=\"$1\" target=\"$2\">"
  },
  {
    prefix = "bdi",
    body = "<bdi>$1</bdi>"
  },
  {
    prefix = "bdo",
    body = "<bdo dir=\"$1\">$2</bdo>"
  },
  {
    prefix = "big",
    body = "<big>$1</big>"
  },
  {
    prefix = "blockquote",
    body = {
      "<blockquote cite=\"$2\">",
      "\t$1",
      "</blockquote>"
    }
  },
  {
    prefix = "body",
    body = {
      "<body>",
      "\t$0",
      "</body>"
    }
  },
  {
    prefix = "br",
    body = "<br>"
  },
  {
    prefix = "button",
    body = "<button type=\"$1\">$2</button>"
  },
  {
    prefix = "canvas",
    body = "<canvas id=\"$1\"></canvas>"
  },
  {
    prefix = "caption",
    body = "<caption>$1</caption>"
  },
  {
    prefix = "cite",
    body = "<cite>$1</cite>"
  },
  {
    prefix = "code",
    body = "<code>$1</code>"
  },
  {
    prefix = "col",
    body = "<col />"
  },
  {
    prefix = "colgroup",
    body = {
      "<colgroup>",
      "\t$1",
      "</colgroup>"
    }
  },
  {
    prefix = "command",
    body = "<command>$1</command>"
  },
  {
    prefix = "datalist",
    body = {
      "<datalist>",
      "\t$1",
      "</datalist>"
    }
  },
  {
    prefix = "dd",
    body = "<dd>$1</dd>"
  },
  {
    prefix = "del",
    body = "<del>$1</del>"
  },
  {
    prefix = "details",
    body = {
      "<details>",
      "\t$1",
      "</details>"
    }
  },
  {
    prefix = "dialog",
    body = "<dialog>$1</dialog>"
  },
  {
    prefix = "dfn",
    body = "<dfn>$1</dfn>"
  },
  {
    prefix = "div",
    body = {
      "<div>",
      "\t$1",
      "</div>"
    }
  },
  {
    prefix = "dl",
    body = {
      "<dl>",
      "\t$1",
      "</dl>"
    }
  },
  {
    prefix = "dt",
    body = "<dt>$1</dt>"
  },
  {
    prefix = "em",
    body = "<em>$1</em>"
  },
  embed = {
    prefix = "embed",
    body = "<embed src=\"$1\">"
  },
  {
    prefix = "fieldset",
    body = {
      "<fieldset>",
      "\t$1",
      "</fieldset>"
    }
  },
  {
    prefix = "figcaption",
    body = "<figcaption>$1</figcaption>"
  },
  {
    prefix = "figure",
    body = {
      "<figure>",
      "\t$1",
      "</figure>"
    }
  },
  {
    prefix = "footer",
    body = {
      "<footer>",
      "\t$1",
      "</footer>"
    }
  },
  {
    prefix = "form",
    body = {
      "<form>",
      "\t$1",
      "</form>"
    }
  },
  {
    prefix = "h1",
    body = "<h1>$1</h1>"
  },
  {
    prefix = "h2",
    body = "<h2>$1</h2>"
  },
  {
    prefix = "h3",
    body = "<h3>$1</h3>"
  },
  {
    prefix = "h4",
    body = "<h4>$1</h4>"
  },
  {
    prefix = "h5",
    body = "<h5>$1</h5>"
  },
  {
    prefix = "h6",
    body = "<h6>$1</h6>"
  },
  {
    prefix = "head",
    body = {
      "<head>",
      "\t$1",
      "</head>"
    }
  },
  {
    prefix = "header",
    body = {
      "<header>",
      "\t$1",
      "</header>"
    }
  },
  {
    prefix = "hgroup",
    body = {
      "<hgroup>",
      "\t$1",
      "</hgroup>"
    }
  },
  {
    prefix = "hr",
    body = "<hr>"
  },
  {
    prefix = "html",
    body = {
      "<html>",
      "\t$0",
      "</html>"
    }
  },
  {
    prefix = "i",
    body = "<i>$1</i>"
  },
  {
    prefix = "iframe",
    body = "<iframe src=\"$1\">$2</iframe>"
  },
  {
    prefix = "img",
    body = "<img src=\"$1\" alt=\"$2\">"
  },
  {
    prefix = "input",
    body = "<input type=\"$1\" name=\"$2\" value=\"$3\">"

  },
  {
    prefix = "ins",
    body = "<ins>$1</ins>"
  },
  {
    prefix = "keygen",
    body = "<keygen name=\"$1\">"
  },
  {
    prefix = "kbd",
    body = "<kbd>$1</kbd>"
  },
  {
    prefix = "label",
    body = "<label for=\"$1\">$2</label>"
  },
  {
    prefix = "legend",
    body = "<legend>$1</legend>"
  },
  {
    prefix = "li",
    body = "<li>$1</li>"
  },
  {
    prefix = "link",
    body = "<link rel=\"$1\" type=\"$2\" href=\"$3\">"
  },
  {
    prefix = "main",
    body = {
      "<main>",
      "\t$1",
      "</main>"
    }
  },
  {
    prefix = "map",
    body = {
      "<map name=\"$1\">",
      "\t$2",
      "</map>"
    }
  },
  {
    prefix = "mark",
    body = "<mark>$1</mark>"
  },
  {
    prefix = "menu",
    body = {
      "<menu>",
      "\t$1",
      "</menu>"
    }
  },
  {
    prefix = "menuitem",
    body = "<menuitem>$1</menuitem>"
  },
  {
    prefix = "meta",
    body = "<meta name=\"$1\" content=\"$2\">"
  },
  {
    prefix = "meter",
    body = "<meter value=\"$1\">$2</meter>"
  },
  {
    prefix = "nav",
    body = {
      "<nav>",
      "\t$1",
      "</nav>"
    }
  },
  {
    prefix = "noscript",
    body = {
      "<noscript>",
      "\t$1",
      "</noscript>"
    }
  },
  {
    prefix = "object",
    body = "<object width=\"$1\" height=\"$2\" data=\"$3\">$4</object>"
  },
  {
    prefix = "ol",
    body = {
      "<ol>",
      "\t$1",
      "</ol>"
    }
  },
  {
    prefix = "optgroup",
    body = {
      "<optgroup>",
      "\t$1",
      "</optgroup>"
    }
  },
  {
    prefix = "option",
    body = "<option value=\"$1\">$2</option>"
  },
  {
    prefix = "output",
    body = "<output name=\"$1\" for=\"$2\">$3</output>"
  },
  {
    prefix = "p",
    body = "<p>$1</p>"
  },
  {
    prefix = "param",
    body = "<param name=\"$1\" value=\"$2\">"
  },
  {
    prefix = "pre",
    body = "<pre>$1</pre>"
  },
  {
    prefix = "progress",
    body = "<progress value=\"$1\" max=\"$2\">$3</progress>"
  },
  {
    prefix = "q",
    body = "<q>$1</q>"
  },
  {
    prefix = "rp",
    body = "<rp>$1</rp>"
  },
  {
    prefix = "rt",
    body = "<rt>$1</rt>"
  },
  {
    prefix = "ruby",
    body = {
      "<ruby>",
      "\t$1",
      "</ruby>"
    }
  },
  {
    prefix = "s",
    body = "<s>$1</s>"
  },
  {
    prefix = "samp",
    body = "<samp>$1</samp>"
  },
  {
    prefix = "script",
    body = {
      "<script>",
      "\t$1",
      "</script>"
    }
  },
  {
    prefix = "section",
    body = {
      "<section>",
      "\t$1",
      "</section>"
    }
  },
  {
    prefix = "select",
    body = {
      "<select>",
      "\t$1",
      "</select>"
    }
  },
  {
    prefix = "small",
    body = "<small>$1</small>"
  },
  {
    prefix = "source",
    body = "<source src=\"$1\" type=\"$2\">"
  },
  {
    prefix = "span",
    body = "<span>$1</span>"
  },
  {
    prefix = "strong",
    body = "<strong>$1</strong>"
  },
  {
    prefix = "style",
    body = {
      "<style>",
      "\t$1",
      "</style>"
    }
  },
  {
    prefix = "sub",
    body = "<sub>$1</sub>"
  },
  {
    prefix = "sup",
    body = "<sup>$1</sup>"
  },
  {
    prefix = "summary",
    body = "<summary>$1</summary>"
  },
  {
    prefix = "table",
    body = {
      "<table>",
      "\t$1",
      "</table>"
    }
  },
  {
    prefix = "tbody",
    body = {
      "<tbody>",
      "\t$1",
      "</tbody>"
    }
  },
  {
    prefix = "td",
    body = "<td>$1</td>"
  },
  {
    prefix = "textarea",
    body = "<textarea rows=\"$1\" cols=\"$2\">$3</textarea>"
  },
  {
    prefix = "tfoot",
    body = {
      "<tfoot>",
      "\t$1",
      "</tfoot>"
    }
  },
  {
    prefix = "thead",
    body = {
      "<thead>",
      "\t$1",
      "</thead>"
    }
  },
  {
    prefix = "th",
    body = "<th>$1</th>"
  },
  {
    prefix = "time",
    body = "<time datetime=\"$1\">$2</time>"
  },
  {
    prefix = "title",
    body = "<title>$1</title>"
  },
  {
    prefix = "tr",
    body = "<tr>$1</tr>"
  },
  {
    prefix = "track",
    body = "<track src=\"$1\" kind=\"$2\" srclang=\"$3\" label=\"$4\">"
  },
  u = {
    prefix = "u",
    body = "<u>$1</u>"
  },
  {
    prefix = "ul",
    body = {
      "<ul>",
      "\t$1",
      "</ul>"
    }
  },
  {
    prefix = "var",
    body = "<var>$1</var>"
  },
  {
    prefix = "video",
    body = {
      "<video width=\"$1\" height=\"$2\" controls>",
      "\t$3",
      "</video>"
    }
  },
  {
    prefix = "div.",
    body = {
      "<div class=\"$1\">",
      "\t$2",
      "</div>"
    }
  },
  {
    prefix = "div#",
    body = {
      "<div id=\"$1\">",
      "\t$2",
      "</div>"
    }
  },
  {
    prefix = "div.#",
    body = {
      "<div class=\"$1\" id=\"$2\">",
      "\t$3",
      "</div>"
    }
  }
}
