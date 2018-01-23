# Maven Test Class Name Autocompletion Script

Bash script which enables autocompletion for Test File Names run with -Dtest using Maven.

Installation:

1.Download maven-test-autocompletion.bash and save it within /etc/bash_completion.d/.

2.Open a new bash terminal :)

Usage:

mvn [ * ] -Dtest=[TAB]

mvn [ * ] -Dtest=TestFilePrefix[TAB]

   where [ * ] denotes some build phases.
   
TODO:

Add support for -Dtest=TestClassName#testMethodName 

Inspired by : 

https://github.com/juven/maven-bash-completion

Visit above repository for other useful autocompletion script.
