# Generated from packaging/homebrew in morajabi/poo for v0.1.19. Do not edit here.
class Poo < Formula
  desc "Safely free disk space eaten by dev builds, worktrees, caches and simulators"
  homepage "https://github.com/morajabi/poo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/morajabi/poo/releases/download/v0.1.19/poo-aarch64-apple-darwin.tar.gz"
      sha256 "4f299e2477c72a06555810ab61ff9f367d4300d6000ef7fc575fbc6f1c3119ba"
    end
    on_intel do
      url "https://github.com/morajabi/poo/releases/download/v0.1.19/poo-x86_64-apple-darwin.tar.gz"
      sha256 "ca9320f1c882542ec05b7600f1dde593a82db65780aa91561ae1889a1445dce8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/morajabi/poo/releases/download/v0.1.19/poo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "95deae736e15eff5a2fa7dba95cbe64c02485f15887dfccc5e36315e4c7c7ecb"
    end
    on_intel do
      url "https://github.com/morajabi/poo/releases/download/v0.1.19/poo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1b8a451c6e843f95023b8b17215948fd470222de40dd06ea57af7d2aa991a7c3"
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
