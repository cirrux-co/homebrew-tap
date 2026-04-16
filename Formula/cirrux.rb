class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.10.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.10.0/cirrux-darwin-arm64.tar.gz"
      sha256 "0325c872b259a4996a053a6d9deea5ec1fd6f32bfae8f1fbf3643f75d91a7ee0"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.10.0/cirrux-darwin-x64.tar.gz"
      sha256 "2fe26d1cc4c943980831f1afa92040df4d2812312290a9ed0f1a9cdf9ebadada"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.10.0/cirrux-linux-x64.tar.gz"
      sha256 "636075bc383eac8a747841acdf3bdb0680b27c6a497e8b27471d365a64c8aa46"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
