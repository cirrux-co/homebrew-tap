class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.8.1"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.8.1/cirrux-darwin-arm64.tar.gz"
      sha256 "9f5b86dd7aa25eaee17e07fd90bf74fb3070741ab59ecbf5b7f2dd0140818f0c"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.8.1/cirrux-darwin-x64.tar.gz"
      sha256 "dead5b60458bace0aee1e237ec672c10e061bb85f5f463a864528edc1e78fb1f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.8.1/cirrux-linux-x64.tar.gz"
      sha256 "d6b1c099900e47b6fdf69891d8979010c83fdb3d33686d0510c465fc4504dc0b"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
