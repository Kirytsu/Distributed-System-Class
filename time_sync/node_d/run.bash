#!/bin/bash

python3 peer_node.py \
	  --name D --listen 0.0.0.0 13000 \
	  --peers A@localhost:10000 B@localhost:11000 C@localhost:12000 D@localhost:13000 \
	  --logger localhost 14000 \
	  --offset-ms -600