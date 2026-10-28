return {
  s(
    "makefile",
    fmt(
      [[
        CC := clang
        CXX := clang++
        CFLAGES = -Wall -Werror -std={cstd}
        CXXFLAGS =

        exe_name := {exe_name}

        .PHONY: clean debug release
        .DEFAULT_GOLA: debug

        release: CFLAGES += -O3 -g
        release: build/release/bin/$(exe_name) | build/release/bin

        debug: CFLAGES += -g
        debug: build/debug/bin/exe_debug

        clean:
        \trm -rf ./build

        build build/release build/debug build/release/bin build/release/bin build/lib bulid/tests:
        \tmkdir -p $@
      ]],
      { cstd = i(1, "<C standard>"), exe_name = i(2, "<executable name>") },
      { indent_string = [[\t]] }
    )
  ),
}
