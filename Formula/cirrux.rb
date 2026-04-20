class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.14.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.14.0/cirrux-darwin-arm64.tar.gz"
      sha256 "e23e3d7e30e3479a3f366542a9c0abde09e0a7d487d8c842d801756312648ba0"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.14.0/cirrux-darwin-x64.tar.gz"
      sha256 "2d444ebbae6edef7ed05cbce87775f8a35b94f20a09be9e3b50cca232ae585e5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.14.0/cirrux-linux-x64.tar.gz"
      sha256 "eefc21e1cff547e95dcbae282ce5cbe6510bb12b1f8f500718a601ec6ab81a42"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
