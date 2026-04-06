class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.6.0/cirrux-darwin-arm64.tar.gz"
      sha256 "04163cffe9b1da556d3f630e83ab13ffc9c6eb588eb87e9b0fdb7e6c3e0cd0a5"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.6.0/cirrux-darwin-x64.tar.gz"
      sha256 "3000959c81afbb567feba1f81b45c24751ebfa6ad1c6423eec8b9676a3b5fdca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.6.0/cirrux-linux-x64.tar.gz"
      sha256 "370e038d06f4649c968cc2d36e4d772aafe5ae28a2e2ee734486ebef07b1f027"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
