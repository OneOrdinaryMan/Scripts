#!/bin/sh

choices="qutebrowser\nfirefox\ntor-browser\nbrave\ntransmission-gtk"

chosen=$(echo -e "$choices" | dmenu -i -p "Browser:")

$chosen
