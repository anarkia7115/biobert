set -e
set -x

image_name="biobert"
image_version=0.1-gpu
image_name=$image_name:$image_version

docker build \
    --build-arg AK \
    --build-arg SK \
    -t $image_name .

docker tag $image_name $HW_IMAGE_PREFIX/$image_name
docker push $HW_IMAGE_PREFIX/$image_name
