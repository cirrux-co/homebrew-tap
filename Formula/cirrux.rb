class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.9.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.9.0/cirrux-darwin-arm64.tar.gz"
      sha256 "eb3f765dd1a4f9cb4a00bde8b89c24cc668d8e6744dc81c83af1c62abd16b327"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.9.0/cirrux-darwin-x64.tar.gz"
      sha256 "29808cfa6ea53687a1d5f59b530b2eb4c1530fb30230708a6c6ada5ba430d8e3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.9.0/cirrux-linux-x64.tar.gz"
      sha256 "351897c4a4cbbcc45c7b3a23996ffc71ec66d110933ccdb489bb944c43780d6e"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
