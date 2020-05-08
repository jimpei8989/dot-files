name=$1

while true; do
    ssh -NTR 29022:localhost:22 ${name}
    sleep 30
done

