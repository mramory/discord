#!/bin/bash

gnome-terminal --tab --title="Backend" --working-directory="$(pwd)/back" -- bash -c "yarn start:dev"
gnome-terminal --tab --title="Frontend" --working-directory="$(pwd)/front" -- bash -c "yarn dev"
