class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.39.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.39.0/cirrux-darwin-arm64.tar.gz"
      sha256 "0d7a0a76de14b4343b0401cc6fd884878447e186927f7a3e91fe08fb4c94c7ab"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.39.0/cirrux-darwin-x64.tar.gz"
      sha256 "ddce26b466d1b89f1c65ed34661971053e6fc212be116ddf60aec12c676679ec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.39.0/cirrux-linux-x64.tar.gz"
      sha256 "441b6888d738987f4b498fd5cf1f4bbda78a60e82868c13ddf0b9aaea11a48dd"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
