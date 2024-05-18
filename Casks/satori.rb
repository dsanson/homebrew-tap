cask "satori" do
  version "2.1.2"
  sha256 "bb7cb8df61e1954e8279c816b70825fe275e14708c0b3f0138035b9e80bec021"
  url "http://downloads.sticksoftware.com/Satori.dmg"
  name "Satori screensaver"
  desc "A meditative screensaver"
  homepage "http://www.sticksoftware.com/software/Satori.html"

  screen_saver "Satori.saver"

  # No zap stanza required
end
