#!/bin/bash

# Replace these variables with your Wi-Fi network details
SSID="Your_SSID"
PASSWORD="Your_Password"
DEVICE="wlan0"  # Change this to your actual wireless device name

# Enable the wireless device
sudo ip link set "$DEVICE" up

# Create the WPA configuration file
echo "Creating WPA configuration..."
sudo wpa_passphrase "$SSID" "$PASSWORD" | sudo tee /etc/wpa_supplicant/wpa_supplicant.conf

# Start wpa_supplicant
echo "Connecting to Wi-Fi..."
sudo wpa_supplicant -B -i "$DEVICE" -c /etc/wpa_supplicant/wpa_supplicant.conf

# Obtain an IP address
echo "Obtaining IP address..."
sudo dhcpcd "$DEVICE"

echo "Connected to $SSID."
