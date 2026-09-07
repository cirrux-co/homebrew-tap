class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.36.1"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.36.1/cirrux-darwin-arm64.tar.gz"
      sha256 "fae6a2d5f231a5c0c8818171e5ba87d43c693a5934c416ed73626c0a4cb3ed51"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.36.1/cirrux-darwin-x64.tar.gz"
      sha256 "4dc2553daf51b20971a6a0bee4d5f8d85b1552b22ddea9bc2fac39b5a52ad397"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.36.1/cirrux-linux-x64.tar.gz"
      sha256 "873d6051142f7c9ed5095b936a37117481eb771886ab7a0467cc240b8c1cf880"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
