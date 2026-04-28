class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.21.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.21.0/cirrux-darwin-arm64.tar.gz"
      sha256 "c60440b39d3153c96c6004f27ac5bf3f9afee0ee00235e360b152aa2e9e73f05"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.21.0/cirrux-darwin-x64.tar.gz"
      sha256 "d9fc06f41a8ba352c8dd1e27b4f082149a3fb05346e840d6716f624cc7093b09"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.21.0/cirrux-linux-x64.tar.gz"
      sha256 "3c68342befe837c98e6fd4611ff189f202b42f14317e018bd209e70b6633fd77"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
