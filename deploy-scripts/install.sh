#!/bin/bash
set -e

# Remove default index if exists
rm -f /var/www/html/index.html || true

# Ensure ownership and permissions
chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html

# Restart nginx to pick up new files
systemctl restart nginx || true
