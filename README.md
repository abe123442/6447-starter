# Unofficial COMP6447 Starter

Welcome to the unofficial starter codebase for COMP6447!

## Prerequisites

- [**Docker**](https://docs.docker.com/get-started/get-docker/)
- [**Visual Studio Code**](https://code.visualstudio.com/download) and the extensions below:
  - "Dev Containers" (`ms-vscode-remote.remote-containers`).


## Getting Started

Follow these steps to set up your development environment:

### Clone the Repository

Clone this repository to your local machine:

```bash
git clone https://github.com/abe123442/6447-starter mypwnlab
cd mypwnlab
```

### Open in VS Code

```bash
code .
```

### Open the Dev Container

The development environment uses the `skysider/pwndocker` image, which is preloaded with tools like `pwntools`, `gdb`, and other essentials for the course.

- Open the VS Code Command Palette (`Ctrl+Shift+P` or `Cmd+Shift+P`).
- Run `Dev Containers: Reopen in Container`.
> **IT IS EXPECTED TO TAKE A WHILE TO INSTALL THE FIRST TIME!**

### Writing Your First Exploit

In the `/ctf/work/` directory (mapped to your local project folder), create a new file, e.g., `exploit.py`.

```python
from pwn import *

# Example: Connect to a remote service
p = remote('example.com', 12345)
p.sendline(b'Hello, CTF!')
p.interactive()
```

In the VS Code terminal, run:
```bash
python3 exploit.py
```

### Tools included in this environment

- [pwntools](https://github.com/Gallopsled/pwntools)
- [pwndbg](https://github.com/pwndbg/pwndbg)
- [pwngdb](https://github.com/scwuaptx/Pwngdb)
- [ROPgadget](https://github.com/JonathanSalwan/ROPgadget)
- [roputils](https://github.com/inaz2/roputils)
- [one_gadget](https://github.com/david942j/one_gadget)
- [angr](https://github.com/angr/angr)
- [radare2](https://github.com/radare/radare2)
- [seccomp-tools](https://github.com/david942j/seccomp-tools)
- linux_server[64]
- [tmux](https://tmux.github.io/)
- [ltrace](https://linux.die.net/man/1/ltrace)
- [strace](https://linux.die.net/man/1/strace)


### Additional Resources

- **Base Image**: To use a custom Dockerfile instead, edit `.devcontainer/devcontainer.json` and use the [base image](https://github.com/skysider/pwndocker/blob/master/Dockerfile) to guide you.
- **Pwntools Cheatsheet**: To get you started with pwntools see [this cheatsheet](https://gist.github.com/anvbis/64907e4f90974c4bdd930baeb705dedf).
- **VS Code Dev Containers**: See [Developing inside a Container](https://code.visualstudio.com/docs/devcontainers/containers) for advanced configuration.

### Contributing

This is a starter codebase, so feel free to add your own exploit scripts, tools, or improvements. Submit pull requests if you have any improvements!
