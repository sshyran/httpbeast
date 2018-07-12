# Package

version       = "0.1.1"
author        = "Dominik Picheta"
description   = "A super-fast epoll-backed and parallel HTTP server."
license       = "MIT"

srcDir = "src"

# Dependencies

requires "nim >= 0.17.3"

# Test dependencies
requires "asynctools"

task helloworld, "Compiles and executes the hello world server.":
  exec "nim c -d:release --gc:boehm -r tests/helloworld"

task dispatcher, "Compiles and executes the dispatcher test server.":
  exec "nim c -d:release --gc:boehm -r tests/dispatcher"

task test, "Runs the test suite.":
  exec "nimble c -y -r tests/tester"
