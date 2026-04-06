class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.2.0/cirrux-darwin-arm64.tar.gz"
      sha256 "b572cbb104b101fea2f3c2d53642aa3567c8482ae87f6811a7a305f0edccb291"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.2.0/cirrux-darwin-x64.tar.gz"
      sha256 "7f3b23124f71ee2e47e9908df099c68431c6b0d4ad88025495a4307d3571ca3f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.2.0/cirrux-linux-x64.tar.gz"
      sha256 "cedcd574a0338e3e436b1faaf96a8a1e8d1e40519c69f23ed6a07d8f7b08616b"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
