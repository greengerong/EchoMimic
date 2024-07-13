#!/bin/bash

# Set character encoding to UTF-8
export LANG=en_US.UTF-8

# Check if virtual environment exists
if [ -d "myenv" ]; then
    echo "Virtual environment already exists, skipping creation"
else
    # Create virtual environment
    python3 -m venv myenv
fi

# Activate virtual environment
source myenv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Execute Python script
python -u app.py

# Pause (not typically used in Linux, but for consistency)
read -p "Press any key to continue..."
