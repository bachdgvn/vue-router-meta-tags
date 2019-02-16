#!/bin/sh
npm run build && npm publish --access public

echo "Publish finished!";
read -n1 -r -p "Press space to continue..." key
