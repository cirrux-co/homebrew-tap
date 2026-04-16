class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.12.1"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.12.1/cirrux-darwin-arm64.tar.gz"
      sha256 "1efec7e1997ad3b99e229941d4ae38aff50dba4ae4772f9068e85cd4faa8a8c7"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.12.1/cirrux-darwin-x64.tar.gz"
      sha256 "ce46aa9bec3127069abe2ae1d38aaaa41a5197b1f7c9ae3a6f46b032d5346dcb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.12.1/cirrux-linux-x64.tar.gz"
      sha256 "e00e05e69f75cd4a78c3940ada7f92951f6593ddd8cdd8d2236c9899ccfc53b2"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
