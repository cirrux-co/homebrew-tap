class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.44.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.44.0/cirrux-darwin-arm64.tar.gz"
      sha256 "87c2b66b5c5a5aa85e9dfa391d8c6b0297dec19533267f1d3f6f15a18e8cf9cd"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.44.0/cirrux-darwin-x64.tar.gz"
      sha256 "30c2fa56ce0cbdc95ea6126487e5248a67bff5adc156cfebef371e80e495cc37"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.44.0/cirrux-linux-x64.tar.gz"
      sha256 "c484ec5676117ad71b358f46d75f0cacb7bbb3815ae8d98b44e175b4cff77076"
    end
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.44.0/cirrux-linux-arm64.tar.gz"
      sha256 "535f1ebba9a25a1d5fb73acc0dd68d853f770cfb0c5089756d9766ca37a0e56f"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
