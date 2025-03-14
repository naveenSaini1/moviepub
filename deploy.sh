 git pull origin master
# Install Node.js packages
#  npm install
PID=$(sudo lsof -t -i:8080)

# If the PID exists, kill the process
if [ -n "$PID" ]; then
  echo "Process running on port 8080 with PID $PID found. Terminating..."
  sudo kill -9 $PID
  echo "Process terminated."
else
  echo "No process running on port 8080."
fi

# Start the Java application in the background
echo "Starting Java application..."
sudo nohup java -jar easymoviedownloads-0.0.1-SNAPSHOT.jar &
echo "Java application started."

# Build the Node.js application
 npm run build

# Delete all running pm2 processes
sudo pm2 delete all

# Start the Node.js application with pm2 and name it "moviepub"
sudo pm2 start npm --name "moviepub" -- start



# Find the process ID (PID) using port 8081

