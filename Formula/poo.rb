# Generated from packaging/homebrew in morajabi/poo for v0.1.18. Do not edit here.
class Poo < Formula
  desc "Safely free disk space eaten by dev builds, worktrees, caches and simulators"
  homepage "https://github.com/morajabi/poo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/morajabi/poo/releases/download/v0.1.18/poo-aarch64-apple-darwin.tar.gz"
      sha256 "41803f96c2de4dac383c260b4d204861614008eebbe44237b2f0999fad8e0404"
    end
    on_intel do
      url "https://github.com/morajabi/poo/releases/download/v0.1.18/poo-x86_64-apple-darwin.tar.gz"
      sha256 "e37f36aae11159cfa62bd055a6f4e9a56d4978994b256fe0d74b843885ae1d75"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/morajabi/poo/releases/download/v0.1.18/poo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b231dfa29fc90ef135b846f436f980899294975d5bfddf024f386e9c36a8042c"
    end
    on_intel do
      url "https://github.com/morajabi/poo/releases/download/v0.1.18/poo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2f6e3cc163a589936de5e7f4d2788d2f49274f3769feac6634f168fa5fafe5d6"
    end
  end

  def install
    bin.install "poo"
  end

  def caveats
    <<~EOS
      Choose your dev folders:            poo setup
      Teach your coding agents about poo: poo integration install all
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/poo --version")
    system bin/"poo", "mods", "validate", "--text"
  end
end
