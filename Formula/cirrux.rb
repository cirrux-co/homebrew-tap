class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.45.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.45.0/cirrux-darwin-arm64.tar.gz"
      sha256 "12be5108baf126d64e81670aff2565b5bfe29dbb9a79d03b8d4052a32c5d4429"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.45.0/cirrux-darwin-x64.tar.gz"
      sha256 "d35528cc605a8f3dc4aad1418608b16c8acc445f3226bb608cb0038a1b153da7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.45.0/cirrux-linux-x64.tar.gz"
      sha256 "3610b84b8c5518e490dd3a4fcd2d4b84368decdeccdd5bb4cdf5172f33e60df0"
    end
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.45.0/cirrux-linux-arm64.tar.gz"
      sha256 "28a346d1b37ab795c7a7677618b92a68bad2ff9ebdd4fd5bee4c78f7e9111368"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
