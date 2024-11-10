# yaml-linter
A Ruby gem for common-sense checks for YAML files.

Currently just checks for duplicate keys - so for a YAML file like this:
```
---
x:
 - a
 - b:
    aaa: zzz
y: 1
y: 2
x: 5
```

Running `yaml-linter <filename>` should result in:
```
Duplicated key 'x' found at: line 1 column 0, line 7 column 0
Duplicated key 'y' found at: line 5 column 0, line 6 column 0
```
