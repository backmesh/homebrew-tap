class Backmesh < Formula
  desc "CI runners for GitHub Actions in your own cloud"
  homepage "https://github.com/backmesh/backmesh-releases"
  version "0.4.1"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.4.1/backmesh-darwin-arm64.tar.gz"
    sha256 "c899efba209dff0be340b24708636a5f7fe20ac32d764e6195c78b9b4316313d"
  elsif OS.mac?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.4.1/backmesh-darwin-x64.tar.gz"
    sha256 "df96d5007dd00088288e8b703b732326e0fabda18225dffec2800a59c894a34b"
  elsif Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.4.1/backmesh-linux-arm64.tar.gz"
    sha256 "2654d76a547dc24100cad00dc80cf15a7c5c2ab871be3404471fe7b85e3a5361"
  else
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.4.1/backmesh-linux-x64.tar.gz"
    sha256 "860b8401e6069cdcae1e704699648e263c2bdb561e43a9ed7962cd2f9abbedd0"
  end

  def install
    bin.install "backmesh"
    prefix.install "LICENSE", "NOTICE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/backmesh --version")
  end
end
