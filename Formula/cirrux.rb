class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.36.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.36.0/cirrux-darwin-arm64.tar.gz"
      sha256 "3d0d3c3d26f9376f29133c22d64bc5ff8c603953864baaf83cf6f35674911638"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.36.0/cirrux-darwin-x64.tar.gz"
      sha256 "619c6263b92d2cf7026ad0aa7f61abb1eecfca6ecb88f98f084bc950ffaa9852"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.36.0/cirrux-linux-x64.tar.gz"
      sha256 "3b60829dcb482c78883efc1ccb90ba6bf5872dc47457cafc7f1ef5096f61b1b2"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
