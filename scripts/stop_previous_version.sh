#!/bin/bash

# Define the port your application is running on
PORT=8080

# Find the PID of the process running on the specified port
PID=$(lsof -ti:$PORT)

if [ -z "$PID" ]; then
  echo "No process found running on port $PORT"
else
  echo "Stopping process with PID $PID"
  kill $PID
  echo "Process stopped"
fi
