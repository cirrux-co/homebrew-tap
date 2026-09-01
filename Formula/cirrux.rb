class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.35.1"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.35.1/cirrux-darwin-arm64.tar.gz"
      sha256 "dd6f32da08d49b2cb3f74896c1bb8ac6ccb87fb8e1ac8616f93676b8b8a723ee"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.35.1/cirrux-darwin-x64.tar.gz"
      sha256 "c9178f4ba3e57a90a1cd17709a394345dc6c92cf7b54e5ff686f9baac0ba79b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.35.1/cirrux-linux-x64.tar.gz"
      sha256 "c80ebcd9cec06fd432856fae296be6f3fa4293c35e1bfe798a8acde87f40903b"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
