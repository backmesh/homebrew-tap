class Backmesh < Formula
  desc "CI runners for GitHub Actions in your own cloud"
  homepage "https://github.com/backmesh/backmesh-releases"
  version "0.5.4"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.4/backmesh-darwin-arm64.tar.gz"
    sha256 "6ee518571aa44fdd64717358bd1321343bfabb330d58d0d677749a69af58fad3"
  elsif OS.mac?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.4/backmesh-darwin-x64.tar.gz"
    sha256 "1b5dcf0926ea98576012945b099c559ffa16a247de12e09057b7cd449b5a7491"
  elsif Hardware::CPU.arm?
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.4/backmesh-linux-arm64.tar.gz"
    sha256 "0a34d1dcbafaceb4110e9fde1fb3a488eeb61722ff7ca3f5f9bfc9d34eb7d690"
  else
    url "https://github.com/backmesh/backmesh-releases/releases/download/v0.5.4/backmesh-linux-x64.tar.gz"
    sha256 "7867bebb44cc874fb8da1f28b68faa6b4a0f1874d1cd6110e142869c507ba271"
  end

  def install
    bin.install "backmesh"
    prefix.install "LICENSE", "NOTICE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/backmesh --version")
  end
end
