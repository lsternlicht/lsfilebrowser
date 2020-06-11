
# the following env vars must be set:
# AWS_ACCESS_KEY_ID=""
# AWS_SECRET_ACCESS_KEY=""

echo $AWS_ACCESS_KEY_ID:$AWS_SECRET_ACCESS_KEY > ~/.passwd-s3fs
chmod 600 ~/.passwd-s3fs
mkdir /webcasts

s3fs rbdata-audio /webcasts -o passwd_file=${HOME}/.passwd-s3fs -o url=https://nyc3.digitaloceanspaces.com -o use_cache=/tmp -o allow_other -o use_path_request_style -o uid=1000 -o gid=1000

