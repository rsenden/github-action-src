#!/bin/bash
for f in $(find . -name 'action.yml'); do 
  grep -qrlZ 'uses: fortify/github-action/' $f && \
    echo "Updating $f" && \
    sed -r -i -e "s|(uses: fortify\/github-action\/[^@]+)@.*|\1@$1|g" "$f"
done
