#!/bin/bash

set -e # it is for automatic exit , instead of writing validate funstion at each time

failure(){
    echo "Failed at: $1:$2"
}

trap 'failure "#{LINENO}" "${BASH_COMMAND}"' ERR #ERR is the error is the error signal

echo "Hello World success"
echo "Hello world failure"
echo "Hello world after failure"