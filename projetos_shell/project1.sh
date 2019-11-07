#!/bin/bash
<<<<<<< HEAD
​Eu sou Tryber e...

=======
​Eu sou Tryber e... Vou ter muito sucesso na programação!
>>>>>>> 52eab38b34987833d01c65b3846d77a92224e9ce
DOMAIN_REGEXP="[a-zA-Z]+(\.[a-zA-Z]+)"
​
if [[ -z "$1" ]]; then
    echo "Ops, você precisa passar um domínio válido como argumento!"
    exit 1
fi
​
if [[ $1 =~ $DOMAIN_REGEXP ]]; then
  echo $1
else
  echo "Ops, argumento inválido!"
  exit 1
fi
​
whois $1 > "$1.info"
