class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.16.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.16.0/cirrux-darwin-arm64.tar.gz"
      sha256 "3366ac40a3b61c1a9a04535a49d15a6d246292b086e31eecc1316d22fdaeff0e"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.16.0/cirrux-darwin-x64.tar.gz"
      sha256 "b471824a4c230ae81c40cfd88673d311a69c9b69ddd96a1742e3c43781eedf52"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.16.0/cirrux-linux-x64.tar.gz"
      sha256 "7fc433dcb449c548027764590766fcda05a38ba3d8ecc8bb1dc6051eaaa7a001"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
