#!/usr/bin/bash

numberStr=$(cut answer -d ":" -f 1)
answerStr=$(cut answer -d ":" -f 2)

readarray -t numbers <<< "$numberStr"
readarray -t answers <<< "$answerStr"

cp pa5.template I053040008.pa5

for i in "${!numbers[@]}"
do
    IFS= read -d '' -r < <(sed -e ':a' -e '$!{N;ba' -e '}' -e 's/[&/\]/\\&/g; s/\n/\\&/g' <<< "${answers[$i]}")
    escaped=${REPLY%$'\n'}
    processed=$(sed "s/${numbers[$i]}/$escaped/g" I053040008.pa5)
    echo "$processed" > I053040008.pa5
done

