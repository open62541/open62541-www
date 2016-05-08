FILE(REMOVE_RECURSE
  "CMakeFiles/doc"
  "../doc_src/types.rst"
  "../doc_src/constants.rst"
  "../doc_src/types_generated.rst"
  "../doc_src/server.rst"
  "../doc_src/client.rst"
  "../doc_src/log.rst"
  "../doc_src/connection.rst"
  "../doc_src/services.rst"
  "../doc_src/nodestore.rst"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/doc.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
