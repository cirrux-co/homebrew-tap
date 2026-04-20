class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.13.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.13.0/cirrux-darwin-arm64.tar.gz"
      sha256 "d229b14224e7fefb5478413830f344732b0d29bc3539db598e601b6c96a26c42"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.13.0/cirrux-darwin-x64.tar.gz"
      sha256 "5582de740322af7e82f7dfff9e48b92bf769e3503b256ed46e02517fd6a4f40d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.13.0/cirrux-linux-x64.tar.gz"
      sha256 "a7fa3e89960ec544ab04960eb0269255a8f6d9bc4a5c03ca82a17427d01d66c8"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
