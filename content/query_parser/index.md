+++
fragment = "embed"
#disabled = false
date = "2025-02-13"
weight = 110

# There's no way to size an iframe base on its content, so this is a dirty solution that will break once the content resizes
media_source = "/query-http/index.html"
media = '<iframe id="child-iframe" src="/query-http/index.html" style="border: none; width: 100%; height: 1000px;"></iframe>'
size = "100" # 25, 50, 75, 100 (percentage) - default: 75
responsive = false
+++