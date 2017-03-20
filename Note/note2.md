# implicit search
Example: main
```
# default  
OUTPUT_OPTION = -o $@  
# default  
CC = cc  
# default  
COMPILE.c = $(CC) $(CFLAGS) $(CPPFLAGS) $(TARGET_ARCH) –c  
# Implicit Rules  
%.o: %.c  
#  commands to execute (built-in):  
	$(COMPILE.c) $(OUTPUT_OPTION) $<
```

make -p can show the progress of make.

Actual command: 'cc -c -o $@ $<'

Question: What is $< and $@ mean?
$@ is target of rule, $< is first parameter of prerequisite

Special Var
* $@
* $<
* $?: List which was composed by files that newer than target
* $^: List which was composed by all members of prerequisites
