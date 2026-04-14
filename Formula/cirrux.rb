class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.8.0/cirrux-darwin-arm64.tar.gz"
      sha256 "41f210ee928405e6c78f8032bef0372a872f01961dd0485b62058955d084e7da"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.8.0/cirrux-darwin-x64.tar.gz"
      sha256 "a362ed03ca3688ed443ad5465842b36e2ccced0af2d149acc1cfc7bccfed52f9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.8.0/cirrux-linux-x64.tar.gz"
      sha256 "879a5b1c0321b1338dda0517f945cf09e7826a56c0c1d5186799a521f7d89160"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
