class Backmesh < Formula
  desc "CI runners for GitHub Actions in your own cloud"
  homepage "https://github.com/backmesh/backmesh-releases"
  version "0.5.3"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.3/backmesh-darwin-arm64.tar.gz"
    sha256 "c0267b189da09b13d35f4adb52b431668e796a4a4fed0aa065b843c4f7ecc759"
  elsif OS.mac?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.3/backmesh-darwin-x64.tar.gz"
    sha256 "6cdc23930440052b1333f6a2051da1b5c584d8619ae7e87c53b63f6aa32964fc"
  elsif Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.3/backmesh-linux-arm64.tar.gz"
    sha256 "50a5913fde3cbfaab0f19d7e06981011a880a1fa9613724e2ec3b4f5d9c55184"
  else
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.3/backmesh-linux-x64.tar.gz"
    sha256 "b6d392a552ea7a9d02ca2428b4687732e2322887c0004b4fb5f7cb17164f358b"
  end

  def install
    bin.install "backmesh"
    prefix.install "LICENSE", "NOTICE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/backmesh --version")
  end
end
