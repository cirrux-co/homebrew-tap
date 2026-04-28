class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.19.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.19.0/cirrux-darwin-arm64.tar.gz"
      sha256 "00f16c87c466acaca6545485d2a1f758a995ce8cc00e33273a252b805b6faa67"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.19.0/cirrux-darwin-x64.tar.gz"
      sha256 "cf80ba752b5b9dd71b0c2f5d388e7d6294dc12f0ed715ee2ce3b34457b2d205e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.19.0/cirrux-linux-x64.tar.gz"
      sha256 "a2f59360ff25dc5085edda1b2a4dc83117eb651a6a58f290783f953cd0df2de0"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
