#!/bin/bash

echo "Starting Visual Studio Code cleanup..."

# Define paths to clean
declare -a paths=(
    "C:\\Users\\rafae\\AppData\\Local\\Programs\\Microsoft VS Code"
    "C:\\Users\\rafae\\AppData\\Roaming\\Code"
    "C:\\Users\\rafae\\AppData\\Local\\Code"
    "C:\\Users\\rafae\\.vscode"
)

# Delete files and folders
for path in "${paths[@]}"; do
    echo "Attempting to remove: $path"
    powershell.exe -Command "if (Test-Path '$path') { Remove-Item -Path '$path' -Recurse -Force }"
    # Check if the path was successfully removed
    powershell.exe -Command "if (Test-Path '$path') { Write-Host 'FAILED to delete: $path' } else { Write-Host 'SUCCESSFULLY deleted: $path' }"
done

echo "Visual Studio Code cleanup completed."
echo "Status summary for each path:"
for path in "${paths[@]}"; do
    powershell.exe -Command "if (Test-Path '$path') { Write-Host 'Still exists: $path' } else { Write-Host 'Deleted successfully: $path' }"
done

echo "Please restart your system to finalize the cleanup process."
