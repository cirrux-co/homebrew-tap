class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.46.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.46.0/cirrux-darwin-arm64.tar.gz"
      sha256 "7c7d1b64bf8cac6e4c0fdbadc356181744538c7f1052eddfb1509a83057da0da"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.46.0/cirrux-darwin-x64.tar.gz"
      sha256 "8ac0c42550fbae31c71a430235d8c3dbe56be1c3444d9a47999eb9c6528d2e76"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.46.0/cirrux-linux-x64.tar.gz"
      sha256 "f0f7ed6028425ec2f713a7b806a33b16b92465ea1139439772651fe034baeb4b"
    end
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.46.0/cirrux-linux-arm64.tar.gz"
      sha256 "1a143385826d05d2d78db912aa1cc5b780a3706439301979999366c8c172917d"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
