#!/bin/bash

# To run this script remember to run
#     sh <this_file_name>

# Set default locale on the VM
export LC_ALL="en_US.UTF-8"

# Update apt-get packages list
sudo apt-get update

# Run the installation scripts in the right order
sh ruby_install_from_source.sh
sh npm_n_and_node_install.sh
sh image_magick_install.sh
sh postgres_install.sh
sh phantomjs_install.sh
sh nginx_install.sh
sh bower_grunt_and_sass_install.sh
