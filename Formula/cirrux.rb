class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.58.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.58.0/cirrux-darwin-arm64.tar.gz"
      sha256 "163831ec886768dfcfb6656ba40020e735fbd9e1e050ec7b22415bfa53a68ef3"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.58.0/cirrux-darwin-x64.tar.gz"
      sha256 "7fe60e20edebbb5638039cd0b33aa0a47fcedeb9ee0776e3ef2c07745e4d4427"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.58.0/cirrux-linux-x64.tar.gz"
      sha256 "bf3dd4f87492c3a623b85118dcdb22ec1b21ebf799c3de84e92f05006ffc2a71"
    end
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.58.0/cirrux-linux-arm64.tar.gz"
      sha256 "3c397f748cada449c49c19db10c1a4d276fe3d5de2987d0b68e7e5ad07397488"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
