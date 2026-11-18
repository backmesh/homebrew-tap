class Backmesh < Formula
  desc "CI runners for GitHub Actions in your own cloud"
  homepage "https://github.com/backmesh/backmesh-releases"
  version "0.4.2"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.4.2/backmesh-darwin-arm64.tar.gz"
    sha256 "e2185441085c86322a0dbe43a335dc066001d384679737e0deae1c8feb3312b8"
  elsif OS.mac?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.4.2/backmesh-darwin-x64.tar.gz"
    sha256 "1bdafe3b1355daad4e3acfbc361a2bb9d8c8ea47b09b8b8146d37f42d013b1ab"
  elsif Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.4.2/backmesh-linux-arm64.tar.gz"
    sha256 "c0258648b1d36d356a835ab719a6c4db68bf399b247c67bbba3ec4cbd1e612f1"
  else
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.4.2/backmesh-linux-x64.tar.gz"
    sha256 "3578068c5fafe8a4f23fcd563ccdc0ac1e773dd0872b03940f7bbe89cc646195"
  end

  def install
    bin.install "backmesh"
    prefix.install "LICENSE", "NOTICE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/backmesh --version")
  end
end
