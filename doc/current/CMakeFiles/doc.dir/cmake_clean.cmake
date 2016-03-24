FILE(REMOVE_RECURSE
  "CMakeFiles/doc"
  "../doc_src/types.rst"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/doc.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
