class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.51.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.51.0/cirrux-darwin-arm64.tar.gz"
      sha256 "a1e7db1ff5c829b9353b119dc258842f17e82c186fc2ab1867b1d5c04040557e"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.51.0/cirrux-darwin-x64.tar.gz"
      sha256 "939bdce8f717063b431946f034269816b4cb488f138c1eb294b14b27cafd3540"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.51.0/cirrux-linux-x64.tar.gz"
      sha256 "0540c5772117b244c6ffbda22bae5ea498def19892a546515f200010b6d97e6e"
    end
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.51.0/cirrux-linux-arm64.tar.gz"
      sha256 "f87fc9c65d5687bdff96bad6d7832707ba792bbff72e2b8c3a782cecc68c1733"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
