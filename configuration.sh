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

#Add website files
sudo nano /var/www/html/index.html
<title>Linux web server </title>
<h1>Hello from the AlmaLinux Apache Server! </h1>
<h2>Nice place to have a second heading. </h2>
<p>This is my homelab web server. </p>
<body>This is the body, it will hold the bulk of the article im writing. It snowed eight inches and the neighborhood is frozen over. </p>
