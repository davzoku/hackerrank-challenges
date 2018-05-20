# HackerRank Bash 

My solutions for [HackerRank Linux Shell/Bash](https://www.hackerrank.com/domains/shell)

For other bash challenges: see [exercism.io-challenges/bash/](https://github.com/davzoku/exercism.io-challenges/tree/master/bash)


## Bash Notes

### Portable Shebang

Portable Shebang:
```
#!/usr/bin/env bash
```
- It will use the first `bash` executable that appears in the user's `$PATH`.

```
#!/bin/bash
```
- By specifiying `#!/bin/bash`, you specify which interpreter that will be used to run the script

see [exercism comment](http://exercism.io/submissions/8df81cfab85e4ca598213584b2f2c631), [Stack Overflow](https://unix.stackexchange.com/questions/29608/why-is-it-better-to-use-usr-bin-env-name-instead-of-path-to-name-as-my)

### Syntax: FOR, IF ELSE, WHILE

FOR: echo 1 to 99; 1, 3, 5.., 99
```
for i in {1..99..2};
	do
		echo "$i"
	done
```

IF ELSE
```
if [ $input == "y" ] || [ $input == "Y" ];
    then echo "YES"
elif
    then echo "SMTH ELSE"
else
    echo "NO"
fi    
```

### awk

### bc

### Echo result with 3 decimal place

Special Variable: `scale` 

eg. 
```
echo "scale = 3; $output/$N" | bc
```
- echo answer with 3 decimal place (scale)
- BUT it does not do any rounding off

OR

eg.
```
printf "%.3f\n" `echo "$output/$N" | bc -l`
```
- more useful in most cases
### grep

### sed