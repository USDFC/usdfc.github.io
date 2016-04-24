# Docker-Toolbox to Github-pages

## Sources
  1. [Get Started with Docker for Windows](https://docs.docker.com/windows/)
  1. [Introduction to Docker](https://fast.wistia.net/embed/iframe/u3w34ozv6x)
  1. [Docker Toolbox Setup - Windows](https://rominirani.com/2015/08/15/docker-toolbox-setup-windows/)

## Quick Install Instructions
  1. Download [Docker Toolbox](https://www.docker.com/products/docker-toolbox)
  1. Run Installer
    1. Uncheck "Virtualbox" (already installed)
    1. Uncheck "Git for Windows" (already installed)
    1. Click "Install" for driver installation prompts
    1. Uncheck "View Shortcuts in File Explorer"
  1. Run "Docker Quickstart Terminal" from Desktop Icon
    1. Allow creation of network adapter as local administrator x 2
    1. Wait for boot2docker to get an IP and interactive shell
    1. Verify the install by running `docker run hello-world`
      1. If you get the error of `bash: docker.exe: command not found` then:
        1. Right click "My Computer" and then click "Properties"
        1. Click "Advanced system settings" on the left hand side (UAC prompt)
        1. Click "Environment Variables"
        1. Under "System Variables" scroll to PATH and click "Edit"
        1. Add your Install location of Docker Toolbox to the end of the path string
        `;C:\WebDev\DockerToolbox`
        1. Click OK, then OK, then OK
        1. Close all command windows
        1. Reopen Docker Quickstart Terminal
        1. Run `docker` to verify it is seen
  1. Create your personal access token with GitHub.com
    1. Create the key at https://github.com/settings/tokens
    1. Set to following permissions:
      1. repo -> public_repo
      1. user ->user:email
      1. user -> user:follow
    1. Save in .bashrc
    `echo "GITHUB_TOKEN=<TOKEN>" > .bashrc`

## Launch github-pages
  1. Start "Docker Quickstart Terminal"        
  1. Change directory to repo clone
  `cd ~/Documents/GitHub/usdfc.github.io`
  1. Run the container.
  `./docker-github-pages.sh`
