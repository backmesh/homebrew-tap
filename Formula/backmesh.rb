class Backmesh < Formula
  desc "CI runners for GitHub Actions in your own cloud"
  homepage "https://github.com/backmesh/backmesh-releases"
  version "0.5.0"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.0/backmesh-darwin-arm64.tar.gz"
    sha256 "b98a11ed75d636bb43ce1e03c3b94933e510bd5f7720c1c732e267d2a9265074"
  elsif OS.mac?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.0/backmesh-darwin-x64.tar.gz"
    sha256 "be8e7a4a3642636925d0de060b3a900b224b13bb679faf1c717b80ce12e34c9e"
  elsif Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.0/backmesh-linux-arm64.tar.gz"
    sha256 "b7f35a9d845fb7cba08d6d738ba67a44449518750ee5ad82357de5a9b97dc757"
  else
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.0/backmesh-linux-x64.tar.gz"
    sha256 "bfeb8b923425e621b051f03eceda7b20bd10ba7572ec74ed8401868b5e1a8a8b"
  end

  def install
    bin.install "backmesh"
    prefix.install "LICENSE", "NOTICE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/backmesh --version")
  end
end
