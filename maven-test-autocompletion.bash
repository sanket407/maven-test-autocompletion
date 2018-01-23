#!/bin/bash

_mvn()
{
	local names  cur prev prevprev
	local field=()
	local regex="[^/]*$"

 	cur="${COMP_WORDS[COMP_CWORD]}"
 	prev="${COMP_WORDS[COMP_CWORD-1]}"
 	prevprev="${COMP_WORDS[COMP_CWORD-2]}"
 	
 	if [[ ${prev} == -Dtest && ${cur} == "=" ]] ; then
 		prevprev=$prev
 		prev=$cur
 		cur=""
 	fi

 	if [[ ${prevprev} == -Dtest  &&  ${prev} == "=" ]] ; then
		op=( $(find . -name "*.java" -type f | grep "src/test/") )
		for i in "${op[@]}"
			do
   				t="$(echo $i | grep -oP "$regex")"
   				t=${t%.java}
   				field+=("$t");
   				
			done

		COMPREPLY=($(compgen -W "${field[*]}" -- ${cur}))
		
	fi

}

complete -o default -F _mvn -o nospace mvn





