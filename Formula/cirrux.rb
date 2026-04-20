class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.12.3"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.12.3/cirrux-darwin-arm64.tar.gz"
      sha256 "74ccb972cf88259a57d6aaea145f942ee16a8ce0c87f7648960d5c000b18622f"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.12.3/cirrux-darwin-x64.tar.gz"
      sha256 "3c6e80fffd9d4fd1b22c410d32e0946cbbcb1141c1016d659055f320ac5ca150"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.12.3/cirrux-linux-x64.tar.gz"
      sha256 "7e0d9ddf455d35421961fb5bc9a035438df1fe30daacac20fdc417998f0ad23a"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
