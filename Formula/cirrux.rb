class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.7.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.7.0/cirrux-darwin-arm64.tar.gz"
      sha256 "9db28e32a26a62501fb5e0bad09eae0cc0a3c44214e41ff3a91b978cde3ad3f8"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.7.0/cirrux-darwin-x64.tar.gz"
      sha256 "3c3c9ae78b7933affd3b6b765c6adb3c7317fbfabbfe34ca1e2f6ca94302bf85"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.7.0/cirrux-linux-x64.tar.gz"
      sha256 "d3c0c810ede8693f957c42de00f68cdee9e05147a69e147e5b8eaed70deed643"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
