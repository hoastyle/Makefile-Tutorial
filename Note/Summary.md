* Use var as much as possible
* Use system var as much as possible
* prerequisite
```
target: prerequisite
	command
```
* var
	* normal var
	* system var
	* $<, $@...
* debug
	* make -p
* function
	* patsubst
	* wildcard
	* subst
	* SRC:.c=.o
* assign
	* =, can get from subsequent var
	* :=, can't get from subsequent var 
	* ?=, justify whether exist or not
	* +=, add
