# Edit this appropriately
EMAIL=your.email@yale.edu

export HDK_DIR=/home/$USER/caslab-aws-fpga/aws-fpga/hdk
export CL_DIR=$PWD
export EMAIL=$EMAIL
source $HDK_DIR/../hdk_setup.sh
cd build/scripts
./aws_build_dcp_from_cl.sh -notify
