#!/bin/bash

# Update packages
apt-get update -y

# Install nginx
apt-get install -y nginx

# Start nginx
systemctl start nginx

# Enable nginx after reboot
systemctl enable nginx

# Create custom web page
cat > /var/www/html/index.html <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>Rajat DevOps VM</title>
</head>
<body>
    <h1>Hello from Azure Linux VM</h1>
    <h2>Nginx deployed automatically using Terraform</h2>
</body>
</html>
EOF

# Restart nginx
systemctl restart nginx