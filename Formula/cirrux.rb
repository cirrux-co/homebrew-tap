class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.30.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.30.0/cirrux-darwin-arm64.tar.gz"
      sha256 "ae0830528a175fd8c9130cb63c0f8f33c727e2d43f671f01f7c7398873ba12bc"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.30.0/cirrux-darwin-x64.tar.gz"
      sha256 "2c94f2c005b194fb4a781fdf16c0c5247e1b8edb314babde21d4d5cb75550df7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.30.0/cirrux-linux-x64.tar.gz"
      sha256 "aa3d2ad6194a52b19c0faa1437715329e48bfe636a1b028c8526bacec53a48a7"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
