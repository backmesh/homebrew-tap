class Backmesh < Formula
  desc "CI runners for GitHub Actions in your own cloud"
  homepage "https://github.com/backmesh/backmesh-releases"
  version "0.4.0"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.4.0/backmesh-darwin-arm64.tar.gz"
    sha256 "1d3b2d8794cd830e4bcf78add5d5ea1115bf7fa56189740e01a0248b3c851539"
  elsif OS.mac?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.4.0/backmesh-darwin-x64.tar.gz"
    sha256 "5406e9c0cdaee1d7b43304d2d9aa1d607650b018944c11b62ca7e705ae310b04"
  elsif Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.4.0/backmesh-linux-arm64.tar.gz"
    sha256 "a01921f9bb2e573355a831b7b15994dc413d67dd77982846d767392c0123561b"
  else
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.4.0/backmesh-linux-x64.tar.gz"
    sha256 "45ee033c7bf489b824ce58a1182fc66797db1bce2c3a473360539cc6b0f3420d"
  end

  def install
    bin.install "backmesh"
    prefix.install "LICENSE", "NOTICE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/backmesh --version")
  end
end
