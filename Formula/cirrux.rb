class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.24.1"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.24.1/cirrux-darwin-arm64.tar.gz"
      sha256 "e973c68d4f6658ed477b52a296bc4e53b7df7628b1ae5c4ee8e29cc728626ff4"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.24.1/cirrux-darwin-x64.tar.gz"
      sha256 "b9f1065ef7839b2362b9d1941c3b89632189e483c0c6a2301675f2addc7c6527"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.24.1/cirrux-linux-x64.tar.gz"
      sha256 "e60b2c216d6c39951229c23a3ce3088f179172d8951e7450bf9d9b5ef2ce5b33"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
