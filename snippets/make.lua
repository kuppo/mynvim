return {
  s(
    "makefile",
    fmt(
      [[
        CC := clang
        CXX := clang++
        CFLAGES = $(common_flags) -std=c11
        CXXFLAGES = $(common_flags) -std=c++20

        common_flags = -Wall -Werror
        exe_name := {exe_name}

        .DEFAULT_GOAL = debug
        .PHONY: clean debug release run

        release: CFLAGES += -O3 -g
        release: build/release/bin/$(exe_name)

        debug: CFLAGES += -g
        debug: build/debug/bin/exe_debug

        clean:
        \trm -rf ./build

        build build/release build/debug build/release/bin build/debug/bin build/lib bulid/tests:
        \tmkdir -p $@

        run:
        \tbuild/debug/exe_debug
      ]],
      { exe_name = i(1, "<executable name>") },
      { indent_string = [[\t]] }
    )
  ),
}
