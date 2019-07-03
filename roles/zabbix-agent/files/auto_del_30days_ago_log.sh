#!/bin/bash

find /var/log/ -mtime +30 -name "*.log*" -exec rm -rf {} \;
