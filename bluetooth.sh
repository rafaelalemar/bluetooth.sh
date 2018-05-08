#!/bin/bash

clear
echo "Disconnecting Sony 1000XM2..."
bluetoothctl << EOF
disconnect 04:5D:4B:97:34:58
exit
EOF


sleep 5

echo "Connecting Sony 1000XM2"
bluetoothctl << EOF
connect 04:5D:4B:97:34:58
exit
EOF

sleep 7

# Set it to the default output
pacmd set-default-sink "bluez_sink.04_5D_4B_97_34_58"
