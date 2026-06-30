class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.33.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.33.0/cirrux-darwin-arm64.tar.gz"
      sha256 "93a5d364fbfb37061351dba618387efb04b1008daff5e6217f1fd67323c8f93d"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.33.0/cirrux-darwin-x64.tar.gz"
      sha256 "3d9e416f3e6e8fe42da5a6ca9adeba0899b9d0b03867df6e2eee3b3c5d41fc2a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.33.0/cirrux-linux-x64.tar.gz"
      sha256 "62ff301a9a8d5785cf753eed594c3b8327292048f3cd774b02aa22e05fc2aa2c"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
