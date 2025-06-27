# Learn Docker - Node.js App

A sample Node.js & Express application for learning Docker, based on the `learn_docker` project.

# Prerequisites

Before running this project, ensure the following tools are installed on your system.

---

## 🔧 Required Tools

- **Node.js** (v14+)
- **npm** (comes with Node.js)
- **git**
- **Docker** (for containerization)

---

## 📥 Install Node.js on Ubuntu (Recommended Method)

### Using NodeSource (LTS Version – e.g. Node 20)

sudo apt update

sudo apt install -y curl

curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -

sudo apt install -y nodejs

This will also install npm

## 📦 Verify Installation
node -v
npm -v

## Expected output (or higher):
v20.x.x
9.x.x

## Install dependencies:
npm install

## Run the app:
npm start

Visit http://localhost:3000 in your browser.




## Install Docker
If you're planning to run the app using Docker:

sudo apt update

sudo apt install -y docker.io

sudo systemctl start docker

sudo systemctl enable docker

## To run Docker without sudo (optional):
sudo usermod -aG docker $USER

## 🐳 Docker Usage
To run the app inside a Docker container:

## Build the image:
docker build -t learn-docker-app .

## Run the container:

docker run -p 3000:3000 learn-docker-app

Access at: http://localhost:3000

## 🐞 Common Challenges
Issue	Cause	Solution

❌ npm: command not found	Node.js not installed	See PREREQUISITES.md to install Node.js

❌ Docker container exits immediately	No command defined or port mismatch	Ensure CMD is defined in Dockerfile, and app listens on 0.0.0.0

⚠️ App runs locally but not in Docker	Port not exposed or incorrect host binding	Use app.listen(3000, '0.0.0.0') in your Node.js code

🔁 Docker rebuilds too often	node_modules not excluded	Add node_modules to .dockerignore

🔐 Permission denied on docker build	Docker requires sudo	Run as sudo docker ... or add user to docker group

## 🛡 License
This project is licensed under the MIT License.
See the LICENSE file for details.

## 🔗 GitHub Repository

**GitHub URL:** [https://github.com/Rudra392-netizen/learn_docker](https://github.com/Rudra392-netizen/learn_docker)  
**Username:** [Rudra392-netizen](https://github.com/Rudra392-netizen)
