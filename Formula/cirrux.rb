class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.25.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.25.0/cirrux-darwin-arm64.tar.gz"
      sha256 "ee196ef10e19549ffabb18f0bf0e659faddc67c254c2190a5368a9dadb8bfd3f"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.25.0/cirrux-darwin-x64.tar.gz"
      sha256 "7787d3f71b8deac1443a7b2de7eb4144a3d4e69e0079901dc6a9fe8b13cc485d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.25.0/cirrux-linux-x64.tar.gz"
      sha256 "64caea76b259ff843df3b5b7f57278effe5fb7ccff4fb21f21582d2c06009a58"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
