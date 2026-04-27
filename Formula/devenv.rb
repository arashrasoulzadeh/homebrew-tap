class Devenv < Formula
  desc "Dev environment tool"
  homepage "https://github.com/arashrasoulzadeh/devenv"
  version "commit-b2a0221"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arashrasoulzadeh/devenv/releases/download/commit-b2a0221/devenv-macos-arm64"
    sha256 "3eed0f1f2bcc88b691df5d02aedbf983802f1732a4da547d233bcf41fdd6693d"
  end

  def install
    bin.install "devenv-macos-arm64" => "devenv"
  end

  test do
    system "#{bin}/devenv", "--version"
  end
end
