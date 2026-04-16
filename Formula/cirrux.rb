class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.12.2"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.12.2/cirrux-darwin-arm64.tar.gz"
      sha256 "3ae155e880d2d25fff2c9436d475e400578060e20c08a4dad96e224c0747dc53"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.12.2/cirrux-darwin-x64.tar.gz"
      sha256 "743613b386782f1c83ac910f830f70430b5ae7e4740f7558341a59c0375c87b1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.12.2/cirrux-linux-x64.tar.gz"
      sha256 "ce5fed20ed84f5ff0d863d0a461c4ce344e3fb94b95a7304e4fc33eb1d71b744"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
