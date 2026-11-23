# Generated from packaging/homebrew in morajabi/poo for v0.1.16. Do not edit here.
class Poo < Formula
  desc "Safely free disk space eaten by dev builds, worktrees, caches and simulators"
  homepage "https://github.com/morajabi/poo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/morajabi/poo/releases/download/v0.1.16/poo-aarch64-apple-darwin.tar.gz"
      sha256 "c68792d5bdba4cfe1e985ca384e114c0d3ed18821516550bdceaf6265d815e83"
    end
    on_intel do
      url "https://github.com/morajabi/poo/releases/download/v0.1.16/poo-x86_64-apple-darwin.tar.gz"
      sha256 "50242f87bdfc012701fed9fb75c678cec629686d84d580dcdc9e42e77d7cf854"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/morajabi/poo/releases/download/v0.1.16/poo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e0c4b2cd3d01befe0174cf6531b331f7c55da1bc4d7ca1e96ff3ed4176739903"
    end
    on_intel do
      url "https://github.com/morajabi/poo/releases/download/v0.1.16/poo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "502dbfc0b56d347205c4cdbc8f9a46e03cb94cc5905d65bcae4ae3ae122bec03"
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
