class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.56.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.56.0/cirrux-darwin-arm64.tar.gz"
      sha256 "03bbc73df651d702b6d459002cb55b6f6809c9ec3ae6b2f764eae4e6296e4a81"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.56.0/cirrux-darwin-x64.tar.gz"
      sha256 "69c24ca6ce5107fbd15de6b06172fb6ed3f0d4a3e1f81d8bad0c181f57644f82"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.56.0/cirrux-linux-x64.tar.gz"
      sha256 "ebe67bf6b7a67be1527520e6c0538caf41638126076ad731e6d295fab55e1022"
    end
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.56.0/cirrux-linux-arm64.tar.gz"
      sha256 "2115b24bd05ee6f9389f98e6db4b4f167fa5f2ba1b129d2b54b1cbd708b366f4"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
