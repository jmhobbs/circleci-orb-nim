Install() {
  wget https://nim-lang.org/download/nim-1.4.0-linux_x64.tar.xz
  tar -xf nim-1.4.0-linux_x64.tar.xz
  cd nim-1.4.0 || return
  sudo bash ./install.sh /usr/local/bin
  ./koch nimble
  sudo mv bin/nimble /usr/local/bin
}

# Will not run if sourced for bats-core tests.
# View src/tests for more information.
ORB_TEST_ENV="bats-core"
if [ "${0#*$ORB_TEST_ENV}" == "$0" ]; then
  Install
fi
