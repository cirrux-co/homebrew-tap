class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.54.1"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.54.1/cirrux-darwin-arm64.tar.gz"
      sha256 "fd6120c0ecaac046e1dd7ea17e0dcef0cd30061a5793aaa68159d9546fa41e3b"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.54.1/cirrux-darwin-x64.tar.gz"
      sha256 "dbd3b4efabfa6688911ee526d502966223b7b6521939fbbf7cd8db6e7bdbd693"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.54.1/cirrux-linux-x64.tar.gz"
      sha256 "dd07786e90e749f7cf5fcedff064d40cbadd2651d614044544597a6cfad32884"
    end
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.54.1/cirrux-linux-arm64.tar.gz"
      sha256 "aa2868b86c598facf193c17174603f656ae6c988c13dff7496537cb427f43dc3"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
