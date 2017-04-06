Purpose of the shell script:
-----------------------------
Execute the shell script "replaceTokens.sh" which takes an html file"index.html"(with placeholders that are marked with double square
brackets) and replaces the value of the placeholders with the corresponding value that is found in a
properties file "test.properties" or "production.properties"

Once the script "replaceTokens.sh" is executed , a new html file "index.html" is created in the output directory that is passed as the third argument

Steps to execute :
------------------
1.Copy the bash-example to any location in your system

2.Open the bash terminal and go to the location where bash-example is placed ,for example: /d/development/bash-example

3.To load test environment properties,execute the following command in bash terminal
$ ./replaceTokens.sh /d/development/bash-example/index.html /d/development/bash-example/test.properties /d/development/
bash-example/output/test/index.html

4.To load test environment properties,execute the following command in bash terminal
$ ./replaceTokens.sh /d/development/bash-example/index.html /d/development/bash-example/production.properties /d/develo
pment/bash-example/output/production/index.html