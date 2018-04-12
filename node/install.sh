#!/bin/sh
#
# Node
#
# This installs some of the common dependencies needed (or at least desired)
# using Node.

# Check for Node
if test ! $(which node)
then
  echo "  Installing Node for you."

  brew install node
fi

# Install other node packages
brew install yarn

yarn global add create-react-app --prefix /usr/local

# Install other brew packages

brew install tldr