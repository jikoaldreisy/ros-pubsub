# ROS 2 C++ Publisher-Subscriber Example

A simple ROS 2 (Humble) C++ project demonstrating **Publisher** and **Subscriber** nodes.  
You can run this entirely in **WSL (Ubuntu)** — no hardware required.

---

## 🧩 Project Overview

This workspace contains one package:

```
cpp_pubsub/
├── src/
│ ├── publisher.cpp
│ └── subscriber.cpp
├── CMakeLists.txt
└── package.xml
```

The package creates:
- `publisher` → publishes a `std_msgs/String` message every second  
- `subscriber` → listens to that message and prints it

---

## ⚙️ Requirements

- Ubuntu 22.04 (or WSL)
- [ROS 2 Humble](https://docs.ros.org/en/humble/Installation.html)
- `colcon` build tool

Install colcon if missing:
```bash
sudo apt install python3-colcon-common-extensions
```


# 🚀 Setup and Build
## 1. Clone the Repository
```
cd ~
git clone https://github.com/jikoaldreisy/ros-pubsub.git ros2_ws
cd ros2_ws
```

## 2. Build the Workspace
```
colcon build --symlink-install
```

## 3. Source the Environment
```
source /opt/ros/humble/setup.bash
source ~/ros2_ws/install/setup.bash
```

### (Optional: Add to your ~/.bashrc)
```
echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc
echo "source ~/ros2_ws/install/setup.bash" >> ~/.bashrc
```

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
