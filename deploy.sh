#!/bin/bash
# Union Glen Website Deployment Script for Hostinger VPS
# Run this on your VPS after uploading the website files

echo "======================================"
echo "Union Glen Website Deployment"
echo "======================================"

# Update system
echo "[1/6] Updating system packages..."
sudo apt update

# Install Nginx
echo "[2/6] Installing Nginx..."
sudo apt install -y nginx

# Create website directory
echo "[3/6] Creating website directory..."
sudo mkdir -p /var/www/unionglen

# Set permissions (replace 'node' with your actual username if different)
echo "[4/6] Setting permissions..."
sudo chown -R $USER:$USER /var/www/unionglen
sudo chmod -R 755 /var/www/unionglen

echo "======================================"
echo "Nginx configuration created!"
echo "======================================"
echo ""
echo "NEXT STEPS:"
echo "1. Upload your website files to /var/www/unionglen/"
echo "2. Run: sudo cp /tmp/unionglen-nginx.conf /etc/nginx/sites-available/unionglen"
echo "3. Run: sudo ln -s /etc/nginx/sites-available/unionglen /etc/nginx/sites-enabled/"
echo "4. Run: sudo nginx -t && sudo systemctl restart nginx"
echo "5. Install SSL: sudo apt install certbot python3-certbot-nginx"
echo "6. Run: sudo certbot --nginx -d YOUR_DOMAIN.COM"
echo ""
echo "======================================"
