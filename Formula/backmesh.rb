class Backmesh < Formula
  desc "CI runners for GitHub Actions in your own cloud"
  homepage "https://github.com/backmesh/backmesh-releases"
  version "0.5.2"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.2/backmesh-darwin-arm64.tar.gz"
    sha256 "9d8377a9b85e51a370b77a95de2871bdeef1a784eb2601ad12a14bda6a10fd2a"
  elsif OS.mac?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.2/backmesh-darwin-x64.tar.gz"
    sha256 "8090c409ff1081ccf482672ce30ed0e96ff144125b0ee0fe23d5fa67218e9662"
  elsif Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.2/backmesh-linux-arm64.tar.gz"
    sha256 "70b1322aafa8a48a1a240f7814f02041ac09925274c8f5418b8709845fffc5f1"
  else
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.2/backmesh-linux-x64.tar.gz"
    sha256 "78b09285de8e61eb32936a32f2896d43355693e703fd07897aca0ad04be0df52"
  end

  def install
    bin.install "backmesh"
    prefix.install "LICENSE", "NOTICE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/backmesh --version")
  end
end
