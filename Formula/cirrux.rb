class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.17.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.17.0/cirrux-darwin-arm64.tar.gz"
      sha256 "c12e9a4418c34c1f5651716f240e91519f221ed9e18ac94940088813397ffd18"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.17.0/cirrux-darwin-x64.tar.gz"
      sha256 "9bde9ef5228537c903e1229c5a5976cd61aa42180e129a7a69bb8fffd3511451"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.17.0/cirrux-linux-x64.tar.gz"
      sha256 "056d84e94d38c70b5f3f971c5e743d950120fa901b98d82f5dd4de3fdfc612cf"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
