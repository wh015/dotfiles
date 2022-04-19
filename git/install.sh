#!/bin/bash
cp .gitconfig ~

read -p "Enter username: " NAME
read -p "Enter e-mail: " EMAIL
git config --global user.name "${NAME}"
git config --global user.email "${EMAIL}"

