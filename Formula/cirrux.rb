class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.32.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.32.0/cirrux-darwin-arm64.tar.gz"
      sha256 "995783ac39b2ce5cd4a65d8219ccd867a81b7249d492234b0b2ffaa090d0f636"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.32.0/cirrux-darwin-x64.tar.gz"
      sha256 "f6faf1ce09aab18f9284358292def31e11408bef30bf5b8047f4269e8b832d62"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.32.0/cirrux-linux-x64.tar.gz"
      sha256 "3beb3aea73f8f39f34cabfe00ba4fcc34737aa17fbd2c311b019b195863f529c"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
