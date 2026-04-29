class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.23.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.23.0/cirrux-darwin-arm64.tar.gz"
      sha256 "6e688f440b85c7547c421c7233fe6c441ec58853e4db5f3a8f5155ca0fcc3f4d"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.23.0/cirrux-darwin-x64.tar.gz"
      sha256 "7c1111185635024a73c3ef039aa55c8702c6d80a77299af63d4ecce0ffa4d55b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.23.0/cirrux-linux-x64.tar.gz"
      sha256 "937a125dbd2d3e3a776912001b440cd97c5e5787f1e1f1c7d804c2be84bc1fbb"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
