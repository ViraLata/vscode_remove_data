Visual Studio Code Cleanup Script
plaintext
Copy code
   / \__
  (    @\____
  /         O
 /   (_____/
/_____/   U

Description
This repository contains a Bash script designed to completely remove Visual Studio Code and its associated files from a Windows system. It is particularly useful when uninstalling Visual Studio Code manually leaves behind residual files, directories, or settings that you want to clear.

Key Features

Automated Cleanup: Removes all Visual Studio Code-related files and folders, including installation directories, settings, extensions, and cache.
Detailed Status Reporting: Provides real-time feedback and a summary of the cleanup status for each path.
Safe and Customizable: Includes user-specific paths, ensuring tailored cleanup while being easily modifiable for other installations.
How It Works
Paths Included for Cleanup:

Installation directory: C:\Users\<username>\AppData\Local\Programs\Microsoft VS Code
Settings and workspace storage: C:\Users\<username>\AppData\Roaming\Code
Temporary files and cache: C:\Users\<username>\AppData\Local\Code
Extensions and global settings: C:\Users\<username>\.vscode
Cleanup Process:

Deletes all specified directories and files.
Uses PowerShell commands for compatibility with Windows.
Verifies deletion success for each path and reports results in the terminal.
Final Report:

Summarizes the status of all paths, indicating whether each directory was successfully deleted.

Usage

Clone or download the repository.
Open a Bash terminal (e.g., Git Bash, WSL).
Run the script:
bash
Copy code
bash cleanup_vscode.sh
Review the status output to ensure the cleanup was successful.
Restart your system to finalize the process.

Prerequisites
A Bash-compatible terminal on Windows (e.g., Git Bash or WSL).
Administrator privileges for elevated operations.

Why Use This Script?

Visual Studio Code's default uninstallation may leave residual files on your system, consuming unnecessary disk space or causing issues with reinstallation. This script ensures a thorough cleanup, leaving your system free of any Visual Studio Code traces.

Feel free to contribute or customize the script for your specific needs! 😊

Enjoy your cleaner system! 🐾
