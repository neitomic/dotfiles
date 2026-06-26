#!/usr/bin/env bash
# Toggle Slack: hide if frontmost, else move it to the current space and focus
app_name=$1
focused=$(yabai -m query --windows --window 2>/dev/null | jq -r '.app // empty')

if [ "$focused" = "$app_name" ]; then
  osascript -e "tell application \"System Events\" to set visible of process \"$app_name\" to false"
else
  # Ensure Slack is running and unhidden so yabai can see/move its window
  if ! pgrep -xq $app_name; then
    open -a $app_name
    sleep 0.4
  else
    osascript -e "tell application \"System Events\" to set visible of process \"$app_name\" to true"
  fi

  win=$(yabai -m query --windows | jq -r "map(select(.app==\"$app_name\")) | .[0].id // empty")
  if [ -n "$win" ]; then
    space=$(yabai -m query --spaces --space | jq '.index')
    yabai -m window "$win" --space "$space"   # move to current space
    yabai -m window --focus "$win"            # then focus it
  fi
fi
