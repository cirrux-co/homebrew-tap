class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.52.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.52.0/cirrux-darwin-arm64.tar.gz"
      sha256 "da5a601f71d6dc82e94813507388b350a52bade9aeada71a193a400197dc1f78"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.52.0/cirrux-darwin-x64.tar.gz"
      sha256 "f4c5735bc1cfb2c0d9ea57e4dec4c9dbb713ce43c6be9bb1688bdb6be0dee1aa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.52.0/cirrux-linux-x64.tar.gz"
      sha256 "e5b66600242987db41ed13a855ef3fd939d43a131bdfbac6848d0d10692a7f37"
    end
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.52.0/cirrux-linux-arm64.tar.gz"
      sha256 "8307ec568898b140b4d4cca03e86fb36f2deb63e84fe98b88f1eae4627169fc5"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
