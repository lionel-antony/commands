# https://www.youtube.com/watch?v=6YLMWU-5H9o&list=LLjd-nWZmNc2mOtD_d3mT5fA&index=9&t=799s

# Create .pylintrc file in virtual env folder

# .pylintrc
[MESSAGES CONTROL]
disable = all
enable = W, C, E
# or
enable = E


# Virtual Env

# Create new env
py - 3 - m venv Env
env\scripts\activate

# Install packages
pip install[list of packages]
pip install - r req.txt

# Save package list
pip freeze > req.txt

# Deactivate
Deactivate
