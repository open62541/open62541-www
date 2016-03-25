FILE(REMOVE_RECURSE
  "CMakeFiles/doc"
  "../doc_src/types.rst"
  "../doc_src/types_generated.rst"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/doc.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
