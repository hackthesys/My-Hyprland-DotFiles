#!/bin/bash

killall waybar


waybar -c ~/.config/waybar/config&
waybar -c ~/.config/waybar/config_side&
