# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Kmsenv < Formula
  desc "Manage environment variables using AWS KMS and S3"
  homepage "https://github.com/madebymany/kmsenv"
  url "https://github.com/madebymany/kmsenv/archive/v0.0.9.tar.gz"
  version "0.0.9"
  sha256 "bb771b06da83e17d1b1aedbfd0f36125466559916b93bae4a04e98ea2e511f10"

  depends_on "awscli"

  def install
    system "mv", "kmsenv", "kmsenv"
    bin.install "kmsenv"
  end

  test do
    system "#{bin}/kmsenv"
  end
end
