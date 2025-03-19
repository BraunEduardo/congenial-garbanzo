#!/bin/bash

curl -fsSL "https://nodejs.org/dist/v22.14.0/node-v22.14.0-linux-x64.tar.xz" -o node.tar.xz
tar -xf node.tar.xz

mv "node-v22.14.0-linux-x64" /usr/local/node
ln -s /usr/local/node/bin/node /usr/local/bin/node
ln -s /usr/local/node/bin/npm /usr/local/bin/npm

rm node.tar.xz