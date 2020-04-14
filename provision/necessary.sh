#!/bin/bash -e
necessary() {
  echo 'Installing necessary dependances' 
  sudo apt-get install git -y
  sudo apt-get install curl -y
}

setup() {
  necessary
}

setup "$@"