# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Kmsenv < Formula
  desc "Manage environment variables using AWS KMS and S3"
  homepage "https://github.com/madebymany/kmsenv"
  url "https://github.com/madebymany/kmsenv/archive/v0.0.10.tar.gz"
  version "0.0.10"
  sha256 "98c39c3c847890d1d4b66444939e5f0f289c64f31bfeaba27e059c8ce2f093a3"

  depends_on "awscli"

  def install
    system "mv", "kmsenv", "kmsenv"
    bin.install "kmsenv"
  end

  test do
    system "#{bin}/kmsenv"
  end
end
