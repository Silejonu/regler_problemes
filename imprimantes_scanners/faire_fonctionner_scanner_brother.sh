#!/usr/bin/bash

sudo tee -a /lib/udev/rules.d/60-libsane1.rules << EOF > /dev/null

# Brother scanners
ATTRS{idVendor}=="04f9", ENV{libsane_matched}="yes"
EOF
