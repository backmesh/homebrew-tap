class Backmesh < Formula
  desc "CI runners for GitHub Actions in your own cloud"
  homepage "https://github.com/backmesh/backmesh-releases"
  version "0.7.1"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.7.1/backmesh-darwin-arm64.tar.gz"
    sha256 "bef203db24ef23e07495e44944076b005dfa5275e75337ae53a3a6898d835530"
  elsif OS.mac?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.7.1/backmesh-darwin-x64.tar.gz"
    sha256 "8ea9f9d0923467a319f97a06ac57f3eae1b24f5fa81ad7956d95d2c78ef52bc8"
  elsif Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.7.1/backmesh-linux-arm64.tar.gz"
    sha256 "07af8aa4e4be5e56541995d69e521e017167448778bbefc02c278bf037e51da9"
  else
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.7.1/backmesh-linux-x64.tar.gz"
    sha256 "56f845a282c2e86c4d8d8bc54a20687eb15b157aed603b56e0183f16d6c5b8fb"
  end

  def install
    bin.install "backmesh"
    prefix.install "LICENSE", "NOTICE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/backmesh --version")
  end
end
