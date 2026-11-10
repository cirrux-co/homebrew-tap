class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.57.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.57.0/cirrux-darwin-arm64.tar.gz"
      sha256 "32d25c897c2e0b5bbfc70fccc389eb5bb33c1b3b0536d28c3bc670a6a0f39e4d"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.57.0/cirrux-darwin-x64.tar.gz"
      sha256 "af6699fd0522682e32f4e4efedf7b5a911d50fea729d84849dbbc69a5301a4b7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.57.0/cirrux-linux-x64.tar.gz"
      sha256 "1d89c7ef18a7e3de1a52f0bd03a0177fd3d7a580978dcd56b21370e69f8a82da"
    end
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.57.0/cirrux-linux-arm64.tar.gz"
      sha256 "6b18dd653a4ba8456e1bed05b50f22afc7c416032a361a31782f86044887f1ea"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
