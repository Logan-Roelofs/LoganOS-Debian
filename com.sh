#!/bin/bash

# Run the commands and store their output in variables
hold_packages=$(apt-mark showhold)
upgradable_packages=$(apt list --upgradable 2>/dev/null | tail -n +2 | cut -d'/' -f1)

# Compare the packages and print the ones that are the same
echo "$upgradable_packages" | while IFS= read -r package; do
    if [ "$(echo "$hold_packages" | grep -c "$package")" -gt 0 ]; then
        echo "$package"
    fi
done
