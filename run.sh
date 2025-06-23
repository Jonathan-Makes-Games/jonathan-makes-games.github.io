#!/usr/bin/env bash
# Run a local static server for testing GitHub Pages and Godot web exports

# Use Python's built-in HTTP server (works with Python 3)
# Serves the current directory on http://localhost:8000/docs

# Start the server in the background
python3 -m http.server 8000 &
SERVER_PID=$!

# Wait a moment to ensure the server starts
sleep 2

# Open the default browser at the local server URL (Windows)
start http://localhost:8000/docs

# Wait for the server process to finish
wait $SERVER_PID
