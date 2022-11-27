#!/bin/bash
# Modified from https://github.com/SharzyL/pastebin-worker/blob/master/scripts/md2html.sh

md_file="$1"
html_file="$2"
# title="$3"

cat > "$html_file" <<-EOF
<!DOCTYPE html>
<html lang='en'>
<head>
  <meta charset='UTF-8'>
  <title>Meow Tools</title>
  <link rel="stylesheet" href="https://pages.github.com/assets/css/style.css"/>
  <meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'>
  <link rel="icon" href="https://miaotony.xyz/favicon.ico" type="image/png"/>
</head>
<div class="container-lg px-3 my-5 markdown-body">
</html>
EOF

yarn -s remark "$md_file" --use remark-html >> "$html_file"

cat >> "$html_file" <<-EOF
</div>
</body>
EOF
