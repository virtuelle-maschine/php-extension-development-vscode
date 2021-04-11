# PHP Extension Development with VS Code and Docker
> A repository to provide a setup for developing a PHP extensions with Docker and Visual Studio Code.

## Prerequisites
- A current version of Docker and Docker Compose (only tested with [Docker Desktop for Mac](https://docs.docker.com/docker-for-mac/install/))
- A current version of Visual Studio Code with the 
  [«Remote-Containers»-Extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
  enabled

## Getting Started
Clone the repository. Open the directory in VS Code. You will be will be 
automatically prompted to reopen the folder in a container. Enable the logs
to track progress of the docker container build - this may take quite a while
the first time you build it. Once the container is build and the workspace
reopened, you can open another terminal in VS Code (it will open in the working
directory `/usr/src/ext-dev` inside the container) and create the extension:
```shell
./rebuild.sh
```
Run this command everytime you want to rebuild and test your extension.

## Debugging the extension
Set a breakpoint the function definition of the function `test2()` in the file `ext_skeleton_name.c`.
Select `Run > Start Debugging` from the menu.

Modify the file `debug.php` if you want to debug other parts of your code - this file is used to call the functionality you want to debug.

## To-Do
- Provide a script to rename the extension skeleton to something useful.
- Add more examples of programming PHP extensions (creating constants, using zvals etc.).

