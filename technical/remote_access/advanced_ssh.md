---
layout: default
title: Advanced SSH Use
parent: Remote Access
---
## Advanced SSH Command Usage

### 1. Accessing SSH on non-standard ports for security

By default, SSH listens on port 22. However, to enhance security, you can configure SSH to listen on a non-standard port. To connect to an SSH server running on a non-standard port, you need to specify the port number using the `-p` option. For example, to connect to an SSH server running on port 2222, you would use the following command:

```shell
ssh -p 2222 username@hostname
```

Replace `username` with your username, `hostname` with the IP address or domain name of the SSH server, and `2222` with your desired non-standard port number.

### 2. SCP command and how to use it with custom ports

SCP (Secure Copy) is a command-line tool that allows secure file transfers between a local machine and a remote machine over SSH. It uses the same authentication and security mechanisms as SSH. To copy a file from the local machine to a remote machine on a custom port, use the following command:

```shell
scp -P 2222 /path/to/local/file username@hostname:/path/to/remote/directory
```

To copy a file from a remote machine on a custom port to the local machine, use the following command:

```shell
scp -P 2222 username@hostname:/path/to/remote/file /path/to/local/directory
```

Replace `username` with your username, `hostname` with the IP address or domain name of the remote machine, `2222` with the custom port number, and provide the appropriate file paths.

### 3. X forwarding with custom ports

X forwarding allows you to run graphical applications on a remote machine and have the application windows displayed on your local machine. To enable X forwarding with a custom SSH port, you need to use the `-X` option and specify the port number using the `-p` option when connecting with SSH. For example:

```shell
ssh -X -p 2222 username@hostname
```

Once connected, you can run graphical applications on the remote machine, and they will be displayed on your local machine. Make sure you have an X server installed and running on your local machine for X forwarding to work.

### 4. Link to ssh man page

For a comprehensive and detailed reference on the SSH command and its various options, you can refer to the [SSH manual page](https://man.openbsd.org/ssh). It provides information about the available options, configuration files, and other related topics.
