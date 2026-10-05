class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.43.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.43.0/cirrux-darwin-arm64.tar.gz"
      sha256 "490862b5db9940d10d209fd10a9ade7eb8233f37daf28d5be9b71781816c45fa"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.43.0/cirrux-darwin-x64.tar.gz"
      sha256 "1fed5924ae305f30e6985a5d335df2208397c3edb553d7abef37926566f1ceb3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.43.0/cirrux-linux-x64.tar.gz"
      sha256 "a3c7832a304f51b9077065ed391c88699959c312ebc19c88f3a71c431f380064"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
