# Unofficial COMP6447 Starter

Welcome to the unofficial starter codebase for COMP6447! This repository provides a preconfigured development environment with a Docker-based setup integrated into vscode via Dev Containers.

## Prerequisites

Before you begin, ensure you have the following installed on your system:

- **Docker**: To run the containerised environment (Docker Desktop on Windows/macOS or Docker on Linux).
- **Visual Studio Code**: With the "Dev Containers" extension installed (`ms-vscode-remote.remote-containers`).


## Getting Started

Follow these steps to set up your exploit development environment:

### 1. Clone the Repository

Clone this repository to your local machine:

```bash
git clone https://github.com/abe123442/6447-starter mypwnlab
cd mypwnlab
```

### 2. Open in VS Code

Open the cloned repository in VS Code:

```bash
code .
```

### 3. Set Up the Dev Container

The development environment uses the `skysider/pwndocker` image, which is preloaded with tools like `pwntools`, `gdb`, and other essentials for the course.

1. **Install the Dev Containers Extension**:
   - In VS Code, go to the Extensions view (`Ctrl+Shift+X` or `Cmd+Shift+X`).
   - Search for `ms-vscode-remote.remote-containers` and install it.

2. **Open the Dev Container**:
   - Open the VS Code Command Palette (`Ctrl+Shift+P` or `Cmd+Shift+P`).
   - Run `Dev Containers: Reopen in Container`.
   - VS Code will build the Docker container based on `test.Dockerfile`, set up a Python virtual environment, install dependencies from `requirements.txt`, and configure the Python extension.
   - **IT IS EXPECTED TO TAKE A WHILE TO INSTALL THE FIRST TIME!**

3. **Verify the Setup**:
   - Once the container is running, open a terminal in VS Code (`Terminal > New Terminal`). You should see the Python virtual environment activated (e.g., `(.venv)` in the prompt).
   - Check the Python interpreter, it should point to `/ctf/py/.venv/bin/python`.

### 4. Project Structure

- **`.devcontainer/devcontainer.json`**: Configures the VS Code Dev Container, including the Python extension, virtual environment, and workspace settings.
- **`test.Dockerfile`**: Defines the Docker image, sets up the Python virtual environment, and installs dependencies from `requirements.txt`.
- **`requirements.txt`**: Lists Python packages (e.g., `pwntools`) required for exploit development.
- **`/ctf/work/`**: Your workspace directory, mapped to your local project folder, where you can add exploit scripts and challenges.

### 5. Writing Your First Exploit

1. **Create a Python Script**:
   - In the `/ctf/work/` directory (mapped to your local project folder), create a new file, e.g., `exploit.py`.
   - Use `pwntools` for exploit development. Example:

     ```python
     from pwn import *

     # Example: Connect to a remote service
     p = remote('example.com', 12345)
     p.sendline(b'Hello, CTF!')
     p.interactive()
     ```

2. **Run Your Script**:
   - In the VS Code terminal (with the venv activated), run:
     ```bash
     python exploit.py
     ```
   - Use VS Code’s debugger or terminal to interact with your exploit.

3. **Use CTF Tools**:
   - The `skysider/pwndocker` image includes tools like `gdb`, `pwndbg`, `strace`, and more. Try:
     ```bash
     gdb ./binary
     ```
     or
     ```bash
     pwn checksec ./binary
     ```

### 6. Troubleshooting

- **Virtual Environment Issues**:
  - If the venv doesn’t activate, ensure `.venv` is created at `/ctf/py/.venv` and the path in `devcontainer.json` matches (`/ctf/py/.venv/bin/python`).
  - Run `source /ctf/py/.venv/bin/activate` manually in a terminal to test.

### 7. Additional Resources

- **Pwntools Cheatsheet**: To get you started with pwntools see [this cheatsheet](https://gist.github.com/anvbis/64907e4f90974c4bdd930baeb705dedf).
- **VS Code Dev Containers**: See [Developing inside a Container](https://code.visualstudio.com/docs/devcontainers/containers) for advanced configuration.

### 8. Contributing

This is a starter codebase, so feel free to add your own exploit scripts, tools, or improvements. Submit pull requests if you have any improvements!
