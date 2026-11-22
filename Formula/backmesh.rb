class Backmesh < Formula
  desc "CI runners for GitHub Actions in your own cloud"
  homepage "https://github.com/backmesh/backmesh-releases"
  version "0.5.5"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.5/backmesh-darwin-arm64.tar.gz"
    sha256 "9737460e9f6848d591cb2e42e5687be3c0aad03ea9a230ab02c5b8dc7edadecc"
  elsif OS.mac?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.5/backmesh-darwin-x64.tar.gz"
    sha256 "96ad9684edea5fc7d275a48b6af6c1442724cab5e64f6a716a79992bbbea8c40"
  elsif Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.5/backmesh-linux-arm64.tar.gz"
    sha256 "38e2caf7810b01483e843b0e56a302c656343d95b8fec24a4429d00754db691e"
  else
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.5/backmesh-linux-x64.tar.gz"
    sha256 "1967084977ed5740f2684f7863dd7e7898b33d5cbcffb6a4ba046d1aec1cdd9c"
  end

  def install
    bin.install "backmesh"
    prefix.install "LICENSE", "NOTICE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/backmesh --version")
  end
end
