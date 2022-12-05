for ((i=1; i<=20;i+=1)); do
python3 -m scripts.train --env MiniGrid-10FourDoor-v0 --algo dqn --model dqn-$i --frames 1000000 --procs 16 --batch-size 300 --max-memory 2500 --seed $i --update-interval 20
done
for ((i=50000; i<=1000000;i+=50000)); do
python3 -m scripts.train --env MiniGrid-10FourDoor-v0 --algo a2c --model a2c-$i --frames $i --procs 16 --save-interval 10
done
for ((i=50000; i<=1000000;i+=50000)); do
python3 -m scripts.train --env MiniGrid-10FourDoor-v0 --algo ppo --model ppo-$i --frames $i --procs 16 --save-interval 10
done
