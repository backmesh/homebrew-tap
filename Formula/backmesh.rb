class Backmesh < Formula
  desc "CI runners for GitHub Actions in your own cloud"
  homepage "https://github.com/backmesh/backmesh-releases"
  version "0.6.1"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.6.1/backmesh-darwin-arm64.tar.gz"
    sha256 "52a2c015b9c3c3c6a9952f068d30ebcaf97efb1f54bac45d51ddb5f9ec565e28"
  elsif OS.mac?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.6.1/backmesh-darwin-x64.tar.gz"
    sha256 "093e25ddd68dab305537591c246c9b7ff4b6f40584ed908461fc5342d42be386"
  elsif Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.6.1/backmesh-linux-arm64.tar.gz"
    sha256 "6079390d7ebabfef390dbd4ca70dbe8ad142331dce2cb9d0753f6107a52a3234"
  else
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.6.1/backmesh-linux-x64.tar.gz"
    sha256 "18dcaa65c0575c520e532968cdfa868ac786155a89c01a455547a497ccfa3397"
  end

  def install
    bin.install "backmesh"
    prefix.install "LICENSE", "NOTICE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/backmesh --version")
  end
end
