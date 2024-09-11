# Setup
apt-get -y -qq update
apt-get -y -q install unzip nano

echo ">>> Configuring aws"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip -q awscliv2.zip
sh ./aws/install
aws s3 ls s3://yen-mcli

# Set up VS code server
trap '/tmp/code tunnel unregister' EXIT
cd /tmp && curl -Lk 'https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-x64' --output vscode_cli.tar.gz
tar -xf vscode_cli.tar.gz


