class Backmesh < Formula
  desc "CI runners for GitHub Actions in your own cloud"
  homepage "https://github.com/backmesh/backmesh-releases"
  version "0.4.3"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.4.3/backmesh-darwin-arm64.tar.gz"
    sha256 "d6966c90c3a8b2a4ddeec993685dfbeb8f79a95f0a76bacc656e669f2983e3b8"
  elsif OS.mac?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.4.3/backmesh-darwin-x64.tar.gz"
    sha256 "24c017bde7b6d08128a320d75ab61322d77bf834126739da885ea6bfbb19da65"
  elsif Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.4.3/backmesh-linux-arm64.tar.gz"
    sha256 "2b6d6ae81ca5e71621f03e56724033f17f2b943cee850808ded39e71c05e82bc"
  else
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.4.3/backmesh-linux-x64.tar.gz"
    sha256 "780fbdf38152e824a182779977e3aca2b540df0f0f46c6c3ca1a0f6f007efc9c"
  end

  def install
    bin.install "backmesh"
    prefix.install "LICENSE", "NOTICE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/backmesh --version")
  end
end
