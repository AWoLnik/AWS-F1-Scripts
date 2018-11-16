# README #

### Scripts for preparing FPGA designs for use on Amazon EC2 F1 instances ###

Copyright (C) 2018

Authors: Adam Wolnikowski <adam.wolnikowski@yale.edu>

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 3 of the License, or (at your option) any later version.
This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
See the GNU General Public License for more details.
You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301  USA

# Usage: #

Place these two scripts in the root directory of your custom logic, usually called cl\_[project name].
This directory should have the sub-directories /build, /design, /software, and /verif. 

Make sure to edit the beginning of boths scripts to use the proper email and bucket.

Then simply run build_cl.sh to build a custom logic tarball from your design. Once the build has completed sucessfully, run create_image.sh to receive an AFI and AGFI for your design, which can then be loaded onto an F1 instance.
