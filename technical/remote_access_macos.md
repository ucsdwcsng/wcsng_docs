# Remote Access Setup for MacOS (SSH + VNC)

## SSH Keys Setup

SSH keys provide a secure way of logging into your server and are recommended for all users. The steps for setting up SSH keys on macOS are as follows:

1. Open Terminal. You can do this by searching for "Terminal" in Spotlight.

2. In the Terminal window, enter the following command to generate a new SSH key. Replace "<your_email@example.com>" with your actual email address.

    ```bash
    ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
    ```

3. Press `Return` to accept the default location for your SSH key files. You'll be asked to enter a passphrase. This is optional but recommended for additional security.

4. Once the keys are generated, you can display the public key in Terminal with the following command:

    ```bash
    cat ~/.ssh/id_rsa.pub
    ```

5. Now you can copy the output and paste this key into the SSH Keys section of your server or service that requires SSH authentication.

## SSH Port Forwarding

SSH port forwarding, also known as SSH tunneling, is a method of transporting arbitrary networking data over an encrypted SSH connection. Here's how to set it up:

1. Open Terminal.

2. Use the following command to start an SSH tunnel. Replace the placeholders as follows:

    - `<local-port>`: The local port on your machine.
    - `<remote-host>`: The remote host you're connecting to.
    - `<remote-port>`: The remote port on the remote host.

    ```bash
    ssh -L <local-port>:localhost:<remote-port> <remote-host>
    ```

3. If the command is successful, your SSH tunnel is set up and ready to use!

## VNC Viewer Setup

VNC Viewer allows you to remotely control a computer. macOS comes with a built-in VNC viewer called Screen Sharing. Here's how to use it:

1. Open Finder.

2. In the menu bar, click on "Go" and then "Connect to Server..."

3. In the "Server Address" field, enter `vnc://<IP-address>`, replacing `<IP-address>` with the IP address of the machine you wish to connect to.

4. Click "Connect."

## Connecting to VNC through SSH Port Forward

To securely connect to a VNC server, you can tunnel your VNC traffic through the SSH connection that you've set up:

1. First, set up the SSH tunnel with the following command. Replace the placeholders as before, and use `5900` as the `<remote-port>`, as this is the default port that VNC servers listen on.

    ```bash
    ssh -L <local-port>:localhost:5900 <remote-host>
    ```

2. Then, in the "Connect to Server" dialog in Finder, in the "Server Address" field, instead of entering the remote host's IP address, enter `vnc://localhost:<local-port>`, where `<local-port>` is the local port you used in the SSH command.

3. Click "Connect."

Congratulations, you're now connected to your remote host via VNC over a secure SSH tunnel!

## Starting a VNC Server on the Remote Machine

If a VNC server is not started on the remote machine, you will need to do so yourself. To start a VNC server on the remote machine, you'll need to SSH into it and run the `vncserver` command. Here's how:

1. Open Terminal.

2. Use the `ssh` command to connect to your remote machine. Replace `<remote-host>` with the hostname or IP address of your remote machine.

    ```bash
    ssh <remote-host>
    ```

3. Once you're logged into your remote machine, you can start the VNC server by running the `vncserver` command. If you want to specify a port, you can do so by adding `:<display-number>` to the command. The actual port number will be `5900` plus the `<display-number>`. For example, if you choose `1` as your display number, the port number will be `5901`.

    ```bash
    vncserver :<display-number>
    ```

4. You'll be prompted to enter and confirm a password. This is the password you'll use to connect to the VNC server from your VNC Viewer.

**Note**: This section assumes that the remote server runs linux. If you are not sure which port to use, start with `1` (`:1`). If that port is in use, the system will tell you, and you can try higher numbers. You should avoid using display numbers below `1` as they may be used by system services. You should also avoid using display numbers above `99` to avoid port conflicts.
