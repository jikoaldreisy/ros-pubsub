# ROS 2 Kilted

A containerized ROS 2 setup with a simple C++ project demonstrating **Publisher** and **Subscriber** nodes.  
You can run this entirely in **WSL (Ubuntu)** — no hardware required.

---

<br>

# 🚀 Setup and Build
## 1. Clone the Repository
```
cd ~
git clone git@github.com:jikoaldreisy/ros2-kilted.git
cd ros2-kilted
```


## 2. Build and Enter Container
```
docker compose build
docker compose up -d
docker exec -it ros bash
```


## 3. Build the Workspace
```
colcon build --symlink-install
```

## 4. Source the Environment
```
source ./install/setup.bash
```
