---
layout: default
title: git quickstart
parent: Introductory Topics
---

# An (overly) short git tutorial on terminal

## Contents

{: .no_toc .text-delta }

1. TOC
{:toc}

## Introduction

Git is a free, open-source distributed version control system that facilitates tracking changes in source code during software development. It is designed to handle projects of any size, from small to very large, with speed and efficiency. Git allows multiple developers to work on the same codebase without stepping on each other's toes. With Git, you can revert your code back to a previous version, compare changes over time, see who last modified a piece of code that's causing problems, and more.

To check if Git is installed on your favorite terminal, type:

```powershell
git --version
```

If Git is installed, you should see a version number. If not, you'll need to install it.

## Setting Up Git on Terminal (Windows Powershell)

To install Git on Windows, follow these steps:

1. Download the latest Git for Windows installer [here](https://git-scm.com/download/win).

2. When you've successfully started the installer, you should see the Git Setup wizard screen. Follow the Next and Finish prompts to complete the installation. The default options are pretty sensible for most users.

3. Open a new command prompt (Winkey + R then type cmd) and type `git --version` to verify that it was correctly installed.

## Setting Up Git on Terminal (MacOS)

To install Git on MacOS, follow these steps on the MacOS terminal:

```bash
brew install git
```

Open a new terminal prompt and type `git --version` to verify that it was correctly installed.

## Basic Git Commands and Their Use

### git clone

`git clone` is a command for copying an existing Git repository from a remote server. As an example, do:

```powershell
git clone <repository-url>
```

After running this command, you'll have a local copy of the Hello-World repository.

Of course, here's a short section on the `git checkout` command:

### git checkout

`git checkout` is a powerful command that is used to switch between branches in a repository. Additionally, it can be used to restore files.

To switch to an existing branch:

```powershell
git checkout <branch-name>
```

To create a new branch and switch to it:

```powershell
git checkout -b <new-branch-name>
```

### git commit

`git commit` is used to save your changes to the local repository. This command requires a message to associate with the commit, which should be a brief description of the changes made.

```powershell
git commit -m "Your commit message"
```

Remember, this doesn't affect the remote repository until you push the changes.

### git push

`git push` is used to send local commits to the remote repository.

```powershell
git push origin main
```

This command pushes changes from your local "main" branch to the remote "origin" repository.

### git pull

`git pull` is used to fetch and download content from a remote repository and immediately update the local repository to match that content.

```powershell
git pull origin main
```

This command pulls changes from the remote "main" branch to your current local branch.

## Example Using the Hello-World Repository

Here's an example of how you can use these commands:

1. First, clone the Hello-World repository:

   ```powershell
   git clone https://github.com/octocat/Hello-World.git
   ```

2. Navigate to the new directory that was created:

   ```powershell
   cd Hello-World
   ```

3. Make some changes to the files. For example, you can add a new line to the README.md file.

4. Now, commit these changes:

   ```powershell
   git commit -m "Updated README.md"
   ```

5. After committing, push these changes to the remote repository:

   ```powershell
   git checkout -b main
   git push origin main
   ```

6. If someone else has made changes to the same repository, you can pull these changes:

   ```powershell
   git pull origin main
   ```
