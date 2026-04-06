class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.1.0/cirrux-darwin-arm64.tar.gz"
      sha256 "06a38f77c5e04de7d054d6c998550392724e7d1c88fc890f5cce4b7c46bb43bd"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.1.0/cirrux-darwin-x64.tar.gz"
      sha256 "300e8b47584178ef7b31b4c7971509dc741bf732172d725a75b0e7867fde5e07"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.1.0/cirrux-linux-x64.tar.gz"
      sha256 "180737d69a465a9036cba16ad31a9c74033de44242abe3c95cfc0138e71ac7f4"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
