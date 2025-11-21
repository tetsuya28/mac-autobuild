#!/bin/sh -x

which brew >/dev/null 2>&1
if [ $? -ne 0 ];
then
  echo "not found command brew"
  echo "install brew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

which ansible >/dev/null 2>&1
if [ $? -ne 0 ];
then
  echo "not found command ansible"
  echo "install ansible"
  brew install ansible
fi
