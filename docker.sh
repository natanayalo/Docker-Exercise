vm_2=192.168.122.231
port=5001
duration=5
interval=1
server_duration=$( expr "$duration" '+' 3)

ssh root@$vm_2 docker run -d -p $port:$port --name 311374219_305457343 edengen/eden_natan_iperf_alpine \
iperf -s -p $port -t $server_duration &
sleep 1
iperf -c $vm_2 -t $duration -i $interval
ssh root@$vm_2 "docker stop 311374219_305457343; docker rm 311374219_305457343"

