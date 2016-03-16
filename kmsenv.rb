# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Kmsenv < Formula
  desc "Manage environment variables using AWS KMS and S3"
  homepage "https://github.com/madebymany/kmsenv"
  url "https://github.com/madebymany/kmsenv/archive/v.0.0.6.tar.gz"
  version "0.0.6"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  depends_on "awscli"

  def install
    system "mv", "kmsenv", "kmsenv"
    bin.install "kmsenv"
  end

  test do
    system "#{bin}/kmsenv"
  end
end
