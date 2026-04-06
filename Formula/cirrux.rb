class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.3.0/cirrux-darwin-arm64.tar.gz"
      sha256 "43eb5ec7b0e3a609113d39059eb62ef494d190c16faf3a10e9886c5274861f9a"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.3.0/cirrux-darwin-x64.tar.gz"
      sha256 "cb59ac3fc8d03b7f445803af2b980d29093703c8b715e86866c9a8b2f05a319b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.3.0/cirrux-linux-x64.tar.gz"
      sha256 "8b46036cccdad19401cf39890d420ccc09dfc8b3cfd637e243d87062f96d386b"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
