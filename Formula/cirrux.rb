class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.29.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.29.0/cirrux-darwin-arm64.tar.gz"
      sha256 "12c8ef754541c3de18c95e27c050f5fe959e16a207b8197c0302fedb358569c7"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.29.0/cirrux-darwin-x64.tar.gz"
      sha256 "66a0c37dd5556661abe9ebd522de2595b2067b59b62b600fb5222d250e5e8538"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.29.0/cirrux-linux-x64.tar.gz"
      sha256 "34dd5775704a7e2b0a7f9e8808854b66d93673dc5b4172865506a4b6d3e56757"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
