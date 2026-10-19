class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.49.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.49.0/cirrux-darwin-arm64.tar.gz"
      sha256 "c06d655345e4a33a7336ba6e7d1c4342dc203865f61fc2aed24a9942b30a24ad"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.49.0/cirrux-darwin-x64.tar.gz"
      sha256 "bdf7e38be21155f98e3fb8833ed79cafa35cafac65f5ac4c4eca63a083095c41"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.49.0/cirrux-linux-x64.tar.gz"
      sha256 "a506217374c74a024f04744dcacbebd1f2ce61715489314d33797ae79f67df5a"
    end
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.49.0/cirrux-linux-arm64.tar.gz"
      sha256 "e2b2f25462b7a8fcff10bb81ae4e68c005c0ab822b221b65b862c6d0c18ce75b"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
