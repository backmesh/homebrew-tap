class Backmesh < Formula
  desc "CI runners for GitHub Actions in your own cloud"
  homepage "https://github.com/backmesh/backmesh-releases"
  version "0.7.0"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.7.0/backmesh-darwin-arm64.tar.gz"
    sha256 "8c38fa00f4bd907844828501119c300052da1283bb5d1e86f01a62677d827c44"
  elsif OS.mac?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.7.0/backmesh-darwin-x64.tar.gz"
    sha256 "1d5edbcf8c6e5b29ef4a424c95ccf6d2c5be4baea1c3fa6139d1f4f35460592a"
  elsif Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.7.0/backmesh-linux-arm64.tar.gz"
    sha256 "fa0e295dc06becac8ef8269ee2d5c7bf8b4b0580bb6056b7ffee90f01a34dc14"
  else
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.7.0/backmesh-linux-x64.tar.gz"
    sha256 "a2fb5be0bcfcb3e8818f29a9d6a51597d529a52c0739623f54af971f08d02277"
  end

  def install
    bin.install "backmesh"
    prefix.install "LICENSE", "NOTICE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/backmesh --version")
  end
end
