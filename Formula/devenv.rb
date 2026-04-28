class Devenv < Formula
  desc "Dev environment tool"
  homepage "https://github.com/arashrasoulzadeh/devenv"
  version "1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arashrasoulzadeh/devenv/releases/download/commit-8ffa938/devenv-macos-arm64"
    sha256 "d344d139ad2f46fbeedf55dc73f45d33b1cfc7923fa5d81f3a87e5519661f9ab"
  end

  def install
    bin.install "devenv-macos-arm64" => "devenv"
  end

  test do
    system "#{bin}/devenv", "--version"
  end
end
