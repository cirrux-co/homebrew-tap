class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.34.2"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.34.2/cirrux-darwin-arm64.tar.gz"
      sha256 "de35bcc2f73ac8447843c656b6f935e17c4ece6799903ff9d04dd441efac6cff"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.34.2/cirrux-darwin-x64.tar.gz"
      sha256 "c94ba03fc928df409258e7d77a4fa3632edee898d0f6953f2acf546a384169c0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.34.2/cirrux-linux-x64.tar.gz"
      sha256 "c842313ad60b2bc46341fd0572131055fcacaad4ea364ae019f1b48c7b40b567"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
