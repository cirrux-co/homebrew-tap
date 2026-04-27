class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.18.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.18.0/cirrux-darwin-arm64.tar.gz"
      sha256 "bce2376349f284270dc51045955d18e69406ef5062014a50824d5b0789fc72aa"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.18.0/cirrux-darwin-x64.tar.gz"
      sha256 "14eaec16bec076909c97c43fcbb8054cf071ab0370431d04cb702d5c038e21b3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.18.0/cirrux-linux-x64.tar.gz"
      sha256 "55b3f33534d42e313063646076bbe36145549ba4c7ff5debe0d82d13813b1c1c"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
