
#!/bin/bash

sudo ym install httpd -y
sudo systemctl enable httpd
sudo systemctl start httpd