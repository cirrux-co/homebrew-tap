class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.39.1"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.39.1/cirrux-darwin-arm64.tar.gz"
      sha256 "660f5353b85ee9f8d8aced8de504a879ee3321b7d2337382b2b00fe2287a6b24"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.39.1/cirrux-darwin-x64.tar.gz"
      sha256 "a0a72b88f235eab89b3c94669abafaeddc3e90dcaf83009caa72ce3b5313d25f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.39.1/cirrux-linux-x64.tar.gz"
      sha256 "8a4fae9e4940f07f86b29df34a265cc38dbfb1c224cc74c8af72735772a071df"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
