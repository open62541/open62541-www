FILE(REMOVE_RECURSE
  "CMakeFiles/doc_latex"
  "../doc_src/types.rst"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/doc_latex.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
