cask "agent-quest" do
  version "0.1.0"
  sha256 "ebcb8d34d8e6b6692679e6487891b1afcf1e48a06d6400413e5e5a78c4022b47"

  url "https://github.com/zodius-chtsec/agent-quest/releases/download/v#{version}/agent-quest_#{version}_universal.dmg"
  name "agent-quest"
  desc "Rusty's Retirement-style desktop strip visualizing Claude Code sessions as RPG adventurers"
  homepage "https://github.com/zodius-chtsec/agent-quest"

  app "agent-quest.app"

  caveats <<~EOS
    agent-quest is not code-signed. If macOS refuses to open it, install
    with the --no-quarantine flag or run:
      xattr -cr /Applications/agent-quest.app

    After launching, click the tray icon and choose
    "Install Claude Code hooks", then restart your Claude Code sessions.
  EOS
end
