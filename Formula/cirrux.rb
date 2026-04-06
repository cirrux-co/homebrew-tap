class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.4.0/cirrux-darwin-arm64.tar.gz"
      sha256 "8f8fa1205b32cd263a6cd94bed47ad64780ad7f31ee4876f8a2eed03ca3ff780"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.4.0/cirrux-darwin-x64.tar.gz"
      sha256 "450348e123ae6e692def3e469772640b6c67cf8480ffaacfab65afdd94e77cb0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.4.0/cirrux-linux-x64.tar.gz"
      sha256 "4bbcbb385c040c01a4fc3511cd89395fffcfbaa3774232bfa12e9bd3b9c91ece"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
