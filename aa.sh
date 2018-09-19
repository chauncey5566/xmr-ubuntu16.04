#!/bin/bash
cd /xmr-stak/bin/
sed -i "s/\[pool\]/$1/g" /xmr-stak/bin/pools.txt
sed -i "s/\[wallet\]/$2/g" /xmr-stak/bin/pools.txt
rm -r /xmr-stak/bin/xmr-stak
wget -P /xmr-stak/bin/ https://github.com/chauncey5566/xmr-chauncey/raw/master/xmr-stak
chmod 777 /xmr-stak/bin/xmr-stak
/xmr-stak/bin/xmr-stak
