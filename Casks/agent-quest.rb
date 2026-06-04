cask "agent-quest" do
  version "0.2.0"
  sha256 "25a12436b90f21affa3fd8800784df9ed07ceed36a19278f88ec90ad708c3dd4"

  url "https://github.com/zodius-chtsec/agent-quest/releases/download/v#{version}/agent-quest_#{version}_universal.dmg"
  name "agent-quest"
  desc "Rusty's Retirement-style desktop strip visualizing Claude Code sessions as RPG adventurers"
  homepage "https://github.com/zodius-chtsec/agent-quest"

  app "agent-quest.app"

  caveats <<~EOS
    agent-quest is not code-signed. Before first launch, clear the
    quarantine flag:
      xattr -cr /Applications/agent-quest.app

    After launching, click the tray icon and choose
    "Install Claude Code hooks", then restart your Claude Code sessions.
  EOS
end
