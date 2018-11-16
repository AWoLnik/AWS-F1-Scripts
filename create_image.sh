# Edit this appropriately
BUCKET_NAME=your-bucket

CL_NAME=${PWD##*/}
TARBALL="$(ls -Art build/checkpoints/to_aws | grep .Developer_CL.tar | tail -n1)"
aws s3 cp build/checkpoints/to_aws/$TARBALL s3://$BUCKET_NAME/$CL_NAME/
aws ec2 create-fpga-image --region us-east-1 --input-storage-location Bucket=$BUCKET_NAME,Key=$CL_NAME/$TARBALL --logs-storage-location Bucket=$BUCKET_NAME,Key=$CL_NAME
