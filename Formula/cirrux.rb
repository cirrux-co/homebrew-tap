class Cirrux < Formula
  desc "CLI for Cirrux email"
  homepage "https://cirrux.co"
  version "0.55.0"

  on_macos do
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.55.0/cirrux-darwin-arm64.tar.gz"
      sha256 "4a5155538b266418dabc95163cfd27379bfec7531c7f96432f82dee62ea7bcb6"
    end
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.55.0/cirrux-darwin-x64.tar.gz"
      sha256 "c0aeb9b55626dfcea74d71e033e791183183b52be41dc5c5dfe1b8d302017d41"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cirrux-co/cli/releases/download/v0.55.0/cirrux-linux-x64.tar.gz"
      sha256 "28708e11cbf4d24c6cde4eb39700247463a7a2c4cde604ce9f8c84c2dc7a2f7d"
    end
    on_arm do
      url "https://github.com/cirrux-co/cli/releases/download/v0.55.0/cirrux-linux-arm64.tar.gz"
      sha256 "74b70d86100105591ca0e2b8f6c9c37b13dc8bd7ae3a65d91c25054bc60c4c76"
    end
  end

  def install
    bin.install "cirrux"
  end

  test do
    assert_match "cirrux", shell_output("#{bin}/cirrux --help")
  end
end
