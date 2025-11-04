+++
fragment = "config"

[[config]]
  type = "css" # Acceptable values are icon, meta, link, css, js. Default is empty. Would not add anything on empty.
  block = true # If set to true, would inject the code to the <head> tag. Default is false
  html = "<style>body {background-color: powderblue;}</style>"
  # file = "" # Path to file, can be on page or in static/ directory. Default is empty.

+++