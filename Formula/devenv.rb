class Devenv < Formula
  desc "Dev environment tool"
  homepage "https://github.com/arashrasoulzadeh/devenv"
  version "commit-c9e9b5c"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arashrasoulzadeh/devenv/releases/download/commit-a4df07a/devenv-macos-arm64"
    sha256 "sha256:3c93dd08c772ded6a26baba1ec4c792624b46dbee9fd0fa0d5563c3684a179d3"
  end

  def install
    bin.install "devenv-macos-arm64" => "devenv"
  end

  test do
    system "#{bin}/devenv", "--version"
  end
end
