class Devenv < Formula
  desc "Dev environment tool"
  homepage "https://github.com/arashrasoulzadeh/devenv"
  version "1.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arashrasoulzadeh/devenv/releases/download/commit-8ff33a0/devenv-macos-arm64"
    sha256 "ca260928a0419e685a23ed71ca5de731709371296fd08cebb64667a1e21ecfcf"
  end

  def install
    bin.install "devenv-macos-arm64" => "devenv"
  end

  test do
    system "#{bin}/devenv", "--version"
  end
end
