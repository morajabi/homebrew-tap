# Generated from packaging/homebrew in morajabi/poo for v0.1.16. Do not edit here.
cask "poo-app" do
  version "0.1.16"
  sha256 "6529b19b8a607070f0d586ea93fd810bf7c93df6a7094ef585ce8690c987ad66"

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
