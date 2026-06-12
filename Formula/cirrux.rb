class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.26.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.26.0/cirrux-darwin-arm64.tar.gz"
      sha256 "150d98b1ef44406a0c99488c7cf71b50defd9e910fbfe725edcb7098012f04cc"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.26.0/cirrux-darwin-x64.tar.gz"
      sha256 "3258cbf46c3a2af255e61fc918ee5b44ce41689acb2c3c525bc85be423d4f774"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.26.0/cirrux-linux-x64.tar.gz"
      sha256 "f560372415ada61bd8fd9150574bfbb9d0ea4e86ee48264a84c101997809f5f9"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
