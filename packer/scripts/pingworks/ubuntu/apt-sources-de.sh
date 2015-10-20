#!/bin/bash

# Setting up german ubuntu mirror
sed -i -e 's;us\.archive\.ubuntu\.com;archive.ubuntu.com;g' /etc/apt/sources.list
