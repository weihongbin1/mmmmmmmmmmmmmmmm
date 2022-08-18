#!/bin/bash
for i in {1..100}; do
	touch $(cat /proc/sys/kernel/random/uuid)
	git add .
	git commit -m $(cat /proc/sys/kernel/random/uuid)
	git checkout -b $(cat /proc/sys/kernel/random/uuid)

done
