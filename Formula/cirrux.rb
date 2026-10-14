class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.48.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.48.0/cirrux-darwin-arm64.tar.gz"
      sha256 "cf0b908c8201e1230154da834c4376078032e8e69d3760418e3944b9c3d6110b"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.48.0/cirrux-darwin-x64.tar.gz"
      sha256 "c9788c66b00be5148832bdc4b31fcce65f7e08a2916cbbf7c7aff2794797b5b6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.48.0/cirrux-linux-x64.tar.gz"
      sha256 "830e37278684212073994eb53629a7f15998be4070df7f77598dec1c4cf5151a"
    end
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.48.0/cirrux-linux-arm64.tar.gz"
      sha256 "f778dc4452a416b485e1dac1815583d8f07b9501726591bc03d97b1cab892939"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
