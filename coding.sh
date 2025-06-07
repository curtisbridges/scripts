#!/bin/bash

PROJECT_NAME="$1"
PROJECT_PATH="$2"

function activate_vscode() {
  osascript -e 'tell application "Visual Studio Code" to activate'
}

if [[ -n "$PROJECT_PATH" && -n "$PROJECT_NAME" ]]; then
  # Check if VS Code is running
  if pgrep -x "Visual Studio Code" > /dev/null; then
    # Check for window with matching project name
    if osascript <<EOF | grep -q "$PROJECT_NAME"
tell application "System Events"
  if exists (process "Visual Studio Code") then
    tell process "Visual Studio Code"
      set winTitles to name of every window
      return winTitles as text
    end tell
  end if
end tell
EOF
    then
      activate_vscode
      exit 0
    fi
  fi

  # Not found, launch project
  code "$PROJECT_PATH"
  sleep 1
  activate_vscode

else
  # No arguments: fallback behavior
  if pgrep -x "Visual Studio Code" > /dev/null; then
    activate_vscode
  else
    open -a "Visual Studio Code"
  fi
fi

