class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.50.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.50.0/cirrux-darwin-arm64.tar.gz"
      sha256 "9063b2f3e5f27277bfec479f4ae0285c8538c5f30ca625abe200411a51a72cc7"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.50.0/cirrux-darwin-x64.tar.gz"
      sha256 "bc04f1935bd2b9f54bd4c596c63bb02ad196c97f14662ac3347e52dd86c2a2a8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.50.0/cirrux-linux-x64.tar.gz"
      sha256 "e91d7f6856a7e9828520e238d66d469038a61a51441603492c01eb3e8649ea1f"
    end
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.50.0/cirrux-linux-arm64.tar.gz"
      sha256 "a1425af0c45658860eed2c1a79c259d17b57eba7ede5c17df1ab3a0ba5ce0fa8"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
