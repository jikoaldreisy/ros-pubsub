# ROS 2 C++ Publisher-Subscriber

A simple ROS 2 C++ project demonstrating **Publisher** and **Subscriber** nodes.  
You can run this entirely in **WSL (Ubuntu)** — no hardware required.

---

<br>

# 🚀 Setup and Build
## 1. Clone the Repository
```
cd ~
git clone https://github.com/jikoaldreisy/ros-pubsub.git
cd ros-pubsub
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

<br>

# 🧠 Run the Example

## Open two terminals (both sourced).

Terminal 1 — Publisher
```
ros2 run cpp_pubsub publisher
```

Terminal 2 — Subscriber
```
ros2 run cpp_pubsub subscriber
```

## Expected output:
```
[INFO] [publisher]: Publishing: 'Hello, world! 1'
[INFO] [subscriber]: I heard: 'Hello, world! 1'
```
