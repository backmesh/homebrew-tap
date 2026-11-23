class Backmesh < Formula
  desc "CI runners for GitHub Actions in your own cloud"
  homepage "https://github.com/backmesh/backmesh-releases"
  version "0.5.7"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.7/backmesh-darwin-arm64.tar.gz"
    sha256 "2e9bd1e264648636c312c2b2629743626a8b0b15f9b2e5d5aa32d481a48d909e"
  elsif OS.mac?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.7/backmesh-darwin-x64.tar.gz"
    sha256 "99464152d7657cd3f14e80feeb118d0abba17a910621339850a9b7089bb48c6a"
  elsif Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.7/backmesh-linux-arm64.tar.gz"
    sha256 "3ec6c544207cba4c16331f77719e7c542b404db154b7a4181a5bcff2a7d6a900"
  else
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.7/backmesh-linux-x64.tar.gz"
    sha256 "5589129dce7e183434a49e7333f4fdaff1ac3fcb360dad3420508d6734a41890"
  end

  def install
    bin.install "backmesh"
    prefix.install "LICENSE", "NOTICE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/backmesh --version")
  end
end
