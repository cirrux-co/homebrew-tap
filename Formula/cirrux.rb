class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.47.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.47.0/cirrux-darwin-arm64.tar.gz"
      sha256 "7e70c566c0a96fcfe2b49c742f891c1cb5b00d9c28e09282a82c81ea42016cfa"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.47.0/cirrux-darwin-x64.tar.gz"
      sha256 "a030a2311dcbf0958412936ad965f180aa4ec9a710bc6e7130feb9631d2db70d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.47.0/cirrux-linux-x64.tar.gz"
      sha256 "a4c36aaffe2c215e43b95b69bd92a9aed6a9bbe516b579a98180808ab26ca52f"
    end
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.47.0/cirrux-linux-arm64.tar.gz"
      sha256 "4483fff3cc529c67fdcd0cc566a566412df5b149913e892da715b3159269b142"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
