class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.25.1"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.25.1/cirrux-darwin-arm64.tar.gz"
      sha256 "b824740092aacfa4d06b13c761f6e95d4e2f71e69ee1d48bb5986f56b322c304"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.25.1/cirrux-darwin-x64.tar.gz"
      sha256 "eca0657378a0936cc320a3ca1929a18255fb87da24f60e91d51f0d52d718bc67"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.25.1/cirrux-linux-x64.tar.gz"
      sha256 "6f736069ea0b91e138a19537bb3ad299c8b4751d154d455566ecc3b30f783995"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
