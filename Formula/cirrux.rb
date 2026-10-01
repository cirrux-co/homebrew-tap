class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.41.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.41.0/cirrux-darwin-arm64.tar.gz"
      sha256 "0342a90284f6ef736eda42536e30f6fef83f928d0a13040f972f1e6beb72cf51"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.41.0/cirrux-darwin-x64.tar.gz"
      sha256 "839f0117ed2e29ca2d6f2f8f465602d28f68b60c3bb2f780faadd55c5f2b9397"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.41.0/cirrux-linux-x64.tar.gz"
      sha256 "ab5c69e009698234faa94fe98751a4cedd2861bcf711e46a1013ea61c06ff788"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
