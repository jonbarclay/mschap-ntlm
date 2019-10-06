#!/bin/bash
# relies on https://github.com/hashcat/hashcat-utils...to_ntlm.pl by atom
# takes DES-ntlm-cracked.txt and strips it of the $HEX[hash crap] to feed to atoms script and get results
cp1=$(perl deskey_to_ntlm.pl $(head -n1 DES-ntlm-cracked.txt | cut -d"[" -f2 | cut -d"]" -f1))
cp2=$(perl deskey_to_ntlm.pl $(tail -n1 DES-ntlm-cracked.txt | cut -d"[" -f2 | cut -d"]" -f1))
pt3=$(cat pt3.txt)

ntlmhash="$cp1$cp2$pt3"

echo $ntlmhash
