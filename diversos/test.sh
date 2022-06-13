#!/usr/bin/zsh
for i in {1..10}; do
    if [[ "$i" == '5' ]]; then
        continue
    fi
    echo "Number: $i"
done
