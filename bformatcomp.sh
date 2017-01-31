#!/bin/bash

iformat  -r $1 $2 $3 $4 -s /flex.xml

"$(cygpath -a 'c:/Program Files/Beyond Compare 4/bcomp.exe')" -automerge -ignoreunimportant -reviewconflicts "$1" "$2" "$3" "$4"

touch "$4"

