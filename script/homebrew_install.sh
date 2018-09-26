#!/bin/bash
array=( autoconf git libevent libunistring nettle pkg-config redis wget ctags gmp libffi lua openssl pyenv rtmpdump xz emacs gnutls libtasn1 makedepend p11-kit readline vim )
for i in "${array[@]}"
do
    brew install $i
done
