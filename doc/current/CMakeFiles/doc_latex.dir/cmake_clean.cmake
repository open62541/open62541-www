FILE(REMOVE_RECURSE
  "CMakeFiles/doc_latex"
  "../doc_src/types.rst"
  "../doc_src/constants.rst"
  "../doc_src/types_generated.rst"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/doc_latex.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
