# Generated from packaging/homebrew in morajabi/poo for v0.1.18. Do not edit here.
cask "poo-app" do
  version "0.1.18"
  sha256 "34641f31157a0e97513d1d6f3dc26432e805214e7962f2d01dc74751c7446104"

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
