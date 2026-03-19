#Install software
sudo dnf install httpd -y

#Start and enable httpd
sudo systemctl start httpd 
sudo systemctl enable httpd 

sudo systemctl status httpd 

#Enable firewall
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
sudo firewall-cmd --reload
