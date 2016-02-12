# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Kmsenv < Formula
  desc "Manage environment variables using AWS KMS and S3"
  homepage "https://github.com/madebymany/kmsenv"
  url "https://github.com/madebymany/kmsenv/archive/v0.0.3.tar.gz"
  version "0.0.3"
  sha256 "0b8353da7c6893521afcd7c07cbb6be405b13774ed9e1e5e3b969b6dc336df13"

  depends_on "awscli"

  def install
    system "mv", "kmsenv", "kmsenv"
    bin.install "kmsenv"
  end

  test do
    system "#{bin}/kmsenv"
  end
end
