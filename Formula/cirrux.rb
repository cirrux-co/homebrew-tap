class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.40.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.40.0/cirrux-darwin-arm64.tar.gz"
      sha256 "f879a6b00ee05ddf6adc397c1247a549325dcd86a62155aae474d0469177984b"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.40.0/cirrux-darwin-x64.tar.gz"
      sha256 "56b23031da79af4fc63979498f2ca40278bd69798a3ab6ed1e2fedf0f36c781a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.40.0/cirrux-linux-x64.tar.gz"
      sha256 "d114903c990711327147fc455e8ad4507fbd3785c99af49e0619f8eab3ee696a"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
