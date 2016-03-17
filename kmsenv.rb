# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Kmsenv < Formula
  desc "Manage environment variables using AWS KMS and S3"
  homepage "https://github.com/madebymany/kmsenv"
  url "https://github.com/madebymany/kmsenv/archive/v.0.0.7.tar.gz"
  version "0.0.7"
  sha256 "92ab4539368369eea3039f047e14e2f4f8628f4ebf1d8b7e5f58f7dd9f703937"

  depends_on "awscli"

  def install
    system "mv", "kmsenv", "kmsenv"
    bin.install "kmsenv"
  end

  test do
    system "#{bin}/kmsenv"
  end
end
