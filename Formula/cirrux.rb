class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.15.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.15.0/cirrux-darwin-arm64.tar.gz"
      sha256 "733d0d1ea158d78406d7688ae859bd7a93bab4410884f61ef74330dae79c87d6"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.15.0/cirrux-darwin-x64.tar.gz"
      sha256 "0a02bb5dbcf2f546102dc968f5656621738b1e4a5ecdfa6d6b905d83e760fcfe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.15.0/cirrux-linux-x64.tar.gz"
      sha256 "7f279e7f5c0b48c682c8df9e7766d5fac0c8840144d4e0ed43136324ceb6aec9"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
