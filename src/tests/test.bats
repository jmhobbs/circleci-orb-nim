# Runs prior to every test
setup() {
    # Load our script file.
    source ./src/scripts/test.sh
}

@test '1: Run tests' {
cat <<EOF > testfile.nim
suite "example"
  test "this must be true"
    require(true)

  echo "that is all"
EOF

    export PARAM_TARGET=""
    result=$(RunTests)
    [ "$result" == "Hello World" ]
}
