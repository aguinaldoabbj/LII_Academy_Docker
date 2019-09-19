#!/bin/bash

wget -c https://github.com/docker/compose/releases/latest/download/docker-compose-`uname -s`-`uname -m` -O /tmp/docker-compose
chmod +x /tmp/docker-compose

/tmp/docker-compose -f Composefiles/test_mysql.yml pull
/tmp/docker-compose -f Composefiles/test_mysql.yml up
