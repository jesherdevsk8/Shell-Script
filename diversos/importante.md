## Substituindo touch por > para criar arquivos - Utilize > para criar arquivos ao invés de touch em programas
```

for create in {1..5}; do > arq${create}.txt; done

printf '%b\n' $(< 1.txt)

printf '%b\n' $(grep "$USER" < /etc/passwd)

```

## Uso correto do cat
```
cut -d : -f 1 /etc/passwd

grep "boyah" /etc/passwd

```

- Uso desnecessário do cat

> cat /etc/passwd | cut -d : -f 1

## LS tunado para programas

```

for list in */ ;do echo $list;done

for list in * ;do echo $list;done

for list in */* ;do echo $list;done

​printf '%b\n' *

# Wildcard/Globing
ls ?.txt
ls ???.txt

ls arq?.???
ls arq*.??
ls *.txt
ls arq*

ls [a-z,1-9]*.txt
ls *.{log,txt}
rm *.{log,txt}

```