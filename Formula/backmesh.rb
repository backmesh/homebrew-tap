class Backmesh < Formula
  desc "CI runners for GitHub Actions in your own cloud"
  homepage "https://github.com/backmesh/backmesh-releases"
  version "0.5.1"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.1/backmesh-darwin-arm64.tar.gz"
    sha256 "607f5f6f8ad74fc1f17ad76f30c795124b540130d6d0c31f2da3aa32e3be4e79"
  elsif OS.mac?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.1/backmesh-darwin-x64.tar.gz"
    sha256 "ab95b1cc6880d0bfa35c8e592a803abc638d27ce3c49c6a0ac9835715e8093d1"
  elsif Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.1/backmesh-linux-arm64.tar.gz"
    sha256 "1f47923432da0baeccdb0cf77ed0a475bddcd4b2dac9b7476814f0671ddc2c39"
  else
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.1/backmesh-linux-x64.tar.gz"
    sha256 "e5e115759e6b2a3cfc55c1a757aa284c0556b7a0ba4b975a55b5ede0efc9efb0"
  end

  def install
    bin.install "backmesh"
    prefix.install "LICENSE", "NOTICE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/backmesh --version")
  end
end
