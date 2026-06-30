class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.31.1"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.31.1/cirrux-darwin-arm64.tar.gz"
      sha256 "3edea1bcefda59ddd77d6795bfd81856cc1543dc0242a8f3f41483e2d57049d7"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.31.1/cirrux-darwin-x64.tar.gz"
      sha256 "545acb12473b917b738bc308bdc87b986c6ae052b8afb1d0eb798136ee8d21ef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.31.1/cirrux-linux-x64.tar.gz"
      sha256 "1adb7508d80946945e642b8127693ee868b64270e7a63de31895c9d9d353a1cf"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
