for ((i=50000; i<=400000;i+=50000)); do
python3 -m scripts.train --env MiniGrid-FourDoor-v0 --algo a2c --model ppo-4Door-1k-$i --frames $i --procs 16 --save-interval 10
done
