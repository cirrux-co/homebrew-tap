class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.20.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.20.0/cirrux-darwin-arm64.tar.gz"
      sha256 "7a0756cfd0f87e2cb93e90e897625cb8f6aa9b7681b48a50b43d0b10809f770b"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.20.0/cirrux-darwin-x64.tar.gz"
      sha256 "6a7a63750faf979ee4b02cf08b6c9e3b7fb57e0b56b8e391fd173676bcf28f6d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.20.0/cirrux-linux-x64.tar.gz"
      sha256 "d93bffacfb822927ecd2cc1f1ce19371c1698057a98ee292898838bdea9f8709"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
