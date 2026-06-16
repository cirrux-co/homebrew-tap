class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.28.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.28.0/cirrux-darwin-arm64.tar.gz"
      sha256 "1cc5238db1d4c9705210229a0359cdb1b5257a08f1d7cc9b20a5dd7a4a2bdb7d"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.28.0/cirrux-darwin-x64.tar.gz"
      sha256 "ed4ade3302c6773ab5e87954f4cb59a9c4bbbcd754b9f3b82e6fdc2b326b345e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.28.0/cirrux-linux-x64.tar.gz"
      sha256 "46e0eefe648f222450e86151a924ba050b517540afa70141db535a52309d20e8"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
