#!/bin/bash

while true; do
    read -rp "Have you synced startx-cluster-machine-* applications ?" yn
    case $yn in
        [Yy]e* ) exit;;
        [Nn]o ) echo "You must check startx-cluster-machine-* applications before continuing";;
        * ) echo "Please answer yes or no...";;
    esac
done