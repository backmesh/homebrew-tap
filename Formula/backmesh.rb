class Backmesh < Formula
  desc "CI runners for GitHub Actions in your own cloud"
  homepage "https://github.com/backmesh/backmesh-releases"
  version "0.6.0"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.6.0/backmesh-darwin-arm64.tar.gz"
    sha256 "07a2d9743a65ef7ba0cdeabd76f56ed109f455693e889af111afcafe97239e45"
  elsif OS.mac?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.6.0/backmesh-darwin-x64.tar.gz"
    sha256 "33fd8ba7054736a9842ddc5b59cc14893266701e804c60abaf8603ca9583b409"
  elsif Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.6.0/backmesh-linux-arm64.tar.gz"
    sha256 "ca250822be3ff502862990195d59f8e66ed5e4a2fbedf999500f9cb6f717d41c"
  else
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.6.0/backmesh-linux-x64.tar.gz"
    sha256 "34369ba935c01829faca826412a0f68cec702f12c23f32ca08f7137ff48b2f24"
  end

  def install
    bin.install "backmesh"
    prefix.install "LICENSE", "NOTICE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/backmesh --version")
  end
end
