# Docker-Exercise
**A single bash script – docker.sh, that will run on VM_1 and do the following:**
  a. Spin a docker container based on your predefined image, located on docker-hub), on $VM_2, which listens on port $PORT.
  b. Start an iperf client on VM_1 which sends packets to the above iperf server for $DURATION seconds and prints the report every $INTERVAL seconds. (iperf’s report is printed on screen only
  c. Stop your container on $VM_2
