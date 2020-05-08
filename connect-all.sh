#! /usr/bin/env bash

all=('linux13' 'linux14' 'linux15' 'oasis1' 'oasis2' 'oasis3')

for server in ${all[@]}; do
    ./connect.sh $server &
done

echo 'All done'

