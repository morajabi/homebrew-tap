# Generated from packaging/homebrew in morajabi/poo for v0.1.19. Do not edit here.
cask "poo-app" do
  version "0.1.19"
  sha256 "7654f9cd54f0130fa36782017daf96bffde6125d3bd694d8a21bc31e414440ff"

  url "https://github.com/morajabi/poo/releases/download/v#{version}/Poo.app.zip"
  name "Poo"
  desc "Menu bar app to inspect and safely free disk space used by dev tools"
  homepage "https://github.com/morajabi/poo"

  auto_updates true
  depends_on macos: :sequoia

  app "Poo.app"
  binary "#{appdir}/Poo.app/Contents/Resources/bin/poo"

  zap trash: [
    "~/.config/poo",
    "~/.local/state/poo",
  ]
end
