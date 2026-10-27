class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.53.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.53.0/cirrux-darwin-arm64.tar.gz"
      sha256 "45aa7ceff7011601514f39e303814bcc7ecafc1d46e375b74b305f8ea15b4f03"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.53.0/cirrux-darwin-x64.tar.gz"
      sha256 "6bb52c60f1c9c46f34174d85d506620b73f974d7a1b102215c500592f2bf9bb8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.53.0/cirrux-linux-x64.tar.gz"
      sha256 "037dc234e89dc6127a794edaa1587e22870d76e863e7fa35d27dc6c06d466841"
    end
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.53.0/cirrux-linux-arm64.tar.gz"
      sha256 "72278db14f7d747ee8e8ff8533bac054934675dd588253d97a7dbb410c77448e"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
