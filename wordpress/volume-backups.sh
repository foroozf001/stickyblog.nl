#!/bin/sh
ssh -i ~/Certs/private.pem ubuntu@ec2-108-128-217-232.eu-west-1.compute.amazonaws.com "sudo cp -r /var/lib/docker/volumes/ /home/ubuntu/bak/;sudo chmod -R +rwx /home/ubuntu/bak/;"

scp -i ~/Certs/private.pem -r ubuntu@ec2-108-128-217-232.eu-west-1.compute.amazonaws.com:/home/ubuntu/bak/ /home/foroozf001/Backups/
tar -czvf stickyblog.bak.tar.gz ~/Backups/

ssh -i ~/Certs/private.pem ubuntu@ec2-108-128-217-232.eu-west-1.compute.amazonaws.com "sudo rm -r bak/;"