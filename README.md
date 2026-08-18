# DevOps Server Health Check

A simple Bash script created as part of my DevOps learning journey.

The script accepts a directory as an argument, validates the directory, displays basic system information, and searches for error messages within the specified directory.

## Features

- Accepts a directory as a command-line argument
- Validates the provided directory
- Displays current date and time
- Displays hostname
- Displays current working directory
- Displays CPU count
- Searches for `error` messages recursively
- Uses case-insensitive log searching
- Handles errors and exit statuses

## Technologies

- Linux
- Bash Shell Scripting
- Git
- GitHub

## Shell Concepts Practiced

- Shebang
- Variables
- Command substitution
- Positional arguments
- `if/else` conditions
- Functions
- `grep`
- `find`
- `awk`
- Pipes and redirection
- Exit status
- `set -x` debugging
- Linux commands such as `date`, `hostname`, `pwd`, and `nproc`

## Usage

Make the script executable:

```bash
chmod +x devops_health.sh
