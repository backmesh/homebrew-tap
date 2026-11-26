class Backmesh < Formula
  desc "CI runners for GitHub Actions in your own cloud"
  homepage "https://github.com/backmesh/backmesh-releases"
  version "0.7.2"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.7.2/backmesh-darwin-arm64.tar.gz"
    sha256 "311722de68eab11f105ef2a10b23004a8af4da060e81753e40ef5bc318e9d8fe"
  elsif OS.mac?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.7.2/backmesh-darwin-x64.tar.gz"
    sha256 "cfa0603215a216437dbf6a96d3720032b59c4716972670ce0b390260e433f0fa"
  elsif Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.7.2/backmesh-linux-arm64.tar.gz"
    sha256 "e67654235c952f7d756edb011a1ae3454c754e93c60c7e6730f76b04de8138dc"
  else
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.7.2/backmesh-linux-x64.tar.gz"
    sha256 "198477d7a4b09936bc627f1b7d88c16b29ed6184179b7d5f8190a6d4300e89e5"
  end

  def install
    bin.install "backmesh"
    prefix.install "LICENSE", "NOTICE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/backmesh --version")
  end
end
