# Discord Bot: CatBot

## 備忘錄
### 整體部屬流程:
1. AWS EC2: T2.micro / Ubuntu
2. SSH to instance and install Docker.io
3. Write Dockerfile and Build image 
4. push image to DockerHub (private)
5. SSH to instance and login docker
6. pull the image we pushed
7. run image as container

### 未來維護:
1. Build image after changes
2. push to DockerHub (private)
3. SSH to instance and login docker
4. pull the image we pushed
5. stop the running container
6. run the new image
7. remove the useless container and image  

### 目前功能
1. dice: 隨機骰出1~6
