#!/bin/bash
find unencrypted -type f -exec bash -c 'if="{}"; of="${if#un}"; openssl aes-256-cbc -in "$if" -out "$of" -pass file:keyfile.txt -a' \;
