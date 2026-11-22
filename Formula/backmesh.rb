class Backmesh < Formula
  desc "CI runners for GitHub Actions in your own cloud"
  homepage "https://github.com/backmesh/backmesh-releases"
  version "0.5.6"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.6/backmesh-darwin-arm64.tar.gz"
    sha256 "95908b21a15eb632063e82fa637097b844a1b5a0f7049c4747f0804049b0fd65"
  elsif OS.mac?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.6/backmesh-darwin-x64.tar.gz"
    sha256 "8c06ff5ff857fcd8c78f8197e849f412c5eb4db81f442cc0da0a12121fd2961d"
  elsif Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.6/backmesh-linux-arm64.tar.gz"
    sha256 "2c6a2c2c4cecb5c7e050d8bbda75a4697acfdd212358c344c33c554d845010a2"
  else
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.6/backmesh-linux-x64.tar.gz"
    sha256 "a526dfa5bae97abdfbd3c19f8dec37434c1972d676ab30782a9e4a7ea49f3748"
  end

  def install
    bin.install "backmesh"
    prefix.install "LICENSE", "NOTICE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/backmesh --version")
  end
end
