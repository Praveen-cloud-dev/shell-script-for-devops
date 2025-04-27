#!/bin/bash
function create_directory() {
	mkdir demo
}
if ! create_directory; then
	echo "this code is being exited as the directory  already exists!"
	exit 1
fi
echo "this should not work bescause the code ids interrupted"
