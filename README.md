# RL Starter Files

<p align="center">
    <img width="300" src="README-rsrc/visualize-keycorridor.gif">
</p>

## Features

- **Script to train**, including:
  - Log in txt, CSV and Tensorboard
  - Save model
  - Stop and restart training
  - Use A2C or PPO algorithms
- **Script to visualize**, including:
  - Act by sampling or argmax
  - Save as Gif
- **Script to evaluate**, including:
  - Act by sampling or argmax
  - List the worst performed episodes

## Installation

1. Clone this repository.

2. Install `gym-minigrid` environments and `torch-ac` RL algorithms:

Create a virtual Environment, We used a venv environment

install pytorch with respective CUDA version, For our use we have a CUDA 11.3 instance

```
pip install torch==1.12.1+cu113 torchvision==0.13.1+cu113 torchaudio==0.12.1 --extra-index-url https://download.pytorch.org/whl/cu113

pip install -r requirements.txt

cd minigrid
pip install -e .

cd ../torch-ac
pip install -e .
```
3. To train the model for muliple iterations,

For PPO run
````
bash train_ppo.sh
````
For A2C run
````
bash train_a2c.sh
````
For DQN run
````
bash train_DQN.sh
````

To evaluate the algorithms run,
````
python -m scripts.evaluate --env MiniGrid-Fourdoor-v0 --model "a2c/ppo/dqn-trained-model-name"
````
