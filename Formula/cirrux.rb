class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.11.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.11.0/cirrux-darwin-arm64.tar.gz"
      sha256 "06c1def4e981cff90e27b839968b09cd26163e8e199dc8f7379b2e3dd96a9955"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.11.0/cirrux-darwin-x64.tar.gz"
      sha256 "ae0b6268648756af229b43deacbae17a2c668a92156af26e110d3a2d756aeb70"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.11.0/cirrux-linux-x64.tar.gz"
      sha256 "baa9f960b33fac2f76e33947f08ea596fbb0068bb002070f5cd643b57aabd404"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
