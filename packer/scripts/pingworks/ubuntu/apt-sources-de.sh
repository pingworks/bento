#!/bin/bash

# Setting up german ubuntu mirror
sed -i -e 's;us\.archive\.ubuntu;de.archive.ubuntu;g' /etc/apt/sources.list