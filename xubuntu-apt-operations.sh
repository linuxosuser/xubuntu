#!/bin/bash

apt update
apt full-upgrade -y
apt autoremove --purge -y
apt autoclean
apt clean

echo 'A MŰVELET BEFEJEZŐDÖTT. KÉREM, HOGY INDÍTSA ÚJRA A SZÁMÍTÓGÉPÉT!'
