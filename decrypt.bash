#!/bin/bash
find encrypted -type f -exec bash -c 'if="{}"; of="un${if}"; openssl aes-256-cbc -a -d -in "$if" -out "$of" -pass file:keyfile.txt' \;
