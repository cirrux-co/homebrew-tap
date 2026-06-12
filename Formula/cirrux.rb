class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.27.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.27.0/cirrux-darwin-arm64.tar.gz"
      sha256 "2cf80b216c8851832bcd33d3a3d5cea5df7b0ffeea0535d2d59ccb41e55c804a"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.27.0/cirrux-darwin-x64.tar.gz"
      sha256 "6abafd7eaa63e715a8ca452cd776e2448599a38b9b9df904bdaa73fca1faa6f6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.27.0/cirrux-linux-x64.tar.gz"
      sha256 "f766d1b29a84a1c91b16258ca4a79ecd755cebb6e184630887f27a4b25266641"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
