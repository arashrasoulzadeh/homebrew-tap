class Devenv < Formula
  desc "Dev environment tool"
  homepage "https://github.com/arashrasoulzadeh/devenv"
  version "commit-c9e9b5c"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arashrasoulzadeh/devenv/releases/download/commit-c9e9b5c/devenv-macos-arm64"
    sha256 "547d131d2641b85df57172c0626ee401277523462adad9a33f54d5e6d54b6c40"
  end

  def install
    bin.install "devenv-macos-arm64" => "devenv"
  end

  test do
    system "#{bin}/devenv", "--version"
  end
end
