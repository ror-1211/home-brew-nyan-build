# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nyan < Formula
  desc "Colored cat command which supports syntax highlighting"
  homepage "https://github.com/toshimaru/nyan"
  version "0.9.7"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/toshimaru/nyan/releases/download/v0.9.7/nyan_Darwin_x86_64.tar.gz"
      sha256 "e80ea44dab3f1d6805ba3dc33dab896583013b3c3a9a7e093d5d9d274c0ab0b7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/toshimaru/nyan/releases/download/v0.9.7/nyan_Darwin_arm64.tar.gz"
      sha256 "c2169e0fae6fe1e2cb362708b98342742b74f9ab150e631066391fa7c3e5b2fd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/toshimaru/nyan/releases/download/v0.9.7/nyan_Linux_x86_64.tar.gz"
      sha256 "5b970c2c48fbc57a6062c3b21e48edaf9c48fbd995ed1eea0ef0f60695c62632"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/toshimaru/nyan/releases/download/v0.9.7/nyan_Linux_arm64.tar.gz"
      sha256 "522fd074630794f969a11e518fd71ab8c8a2309bb04a5a63c6d4825cb96fb99b"
    end
  end

  def install
    bin.install "nyan"
  end

  test do
    system "#{bin}/nyan", "-v"
  end
end
