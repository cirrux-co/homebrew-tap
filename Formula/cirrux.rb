class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.38.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.38.0/cirrux-darwin-arm64.tar.gz"
      sha256 "63f5f12cc25559ad04a92d6b3e7819c5c20dc4f6c737825c65164eb7017e4690"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.38.0/cirrux-darwin-x64.tar.gz"
      sha256 "ed99bce6c67e413e27b4421ba55df098da14a007ea37050523370f439df17db5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.38.0/cirrux-linux-x64.tar.gz"
      sha256 "8cfcababf090cac946335f87fd4ae3a72ad6853872cda9baf4345dae33660e2f"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
