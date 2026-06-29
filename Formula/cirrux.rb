class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.30.1"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.30.1/cirrux-darwin-arm64.tar.gz"
      sha256 "2c44d0c08019a074faeeb4062118c0817e2a6a66082d137180ddd3516c35fa15"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.30.1/cirrux-darwin-x64.tar.gz"
      sha256 "56c83557ce25a394b105a789f1ecabc69a7d54473785070c39c8504b1150a5db"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.30.1/cirrux-linux-x64.tar.gz"
      sha256 "b0eccade42a032bc26c20ac133a77bb67d567ac4a410afcaef2036767e9b0667"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
