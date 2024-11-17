#!/bin/bash


device="$1"

doas camcontrol stop "$device"
