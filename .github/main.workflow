workflow "New workflow" {
  on = "push"
  resolves = ["Upload to Discord"]
}

action "Upload to Discord" {
  uses = "sinshutu/upload-to-discord@v1.0.0"
  args = "*.apk"
  secrets = ["DISCORD_WEBHOOK"]
}
