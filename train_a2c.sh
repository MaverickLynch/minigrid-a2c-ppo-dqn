for ((i=50000; i<=400000;i+=50000)); do
python3 -m scripts.train --env MiniGrid-FourDoor-v0 --algo a2c --model a2c-4Door-1Mod-$i --frames $i --procs 1 --save-interval 10
done
