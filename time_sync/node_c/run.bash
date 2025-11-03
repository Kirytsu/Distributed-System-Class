#!/bin/bash

python3 peer_node.py \
	  --name C --listen 0.0.0.0 12000 \
	  --peers A@localhost:10000 B@localhost:11000 C@localhost:12000 D@localhost:13000 \
	  --logger localhost 14000 \
	  --offset-ms -600 

