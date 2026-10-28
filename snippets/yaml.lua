return {
  s(
    "clangd",
    fmt(
      [[
        ---
        If:
          PathMatch: [.*\.c, .*\.h]
          PathExclude: include/llvm-c/.* 
        CompileFlags:
          Add: [-xc, -std=c11]

        ---
        If:
          PathMatch: [.*\.hpp, .*\.H, .*\.cpp, .*\.cxx, .*\.cc, .*\.c\+\+, .*\.C]
          PathExclude: include/llvm-c/.*
        CompileFlags:
          Add: [-xc++, -std=c++20]

        ---
        CompileFlags:
          Add: [-Wall, -Werror]
    ]],
      {}
    )
  ),
}
