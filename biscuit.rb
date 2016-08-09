# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Biscuit < Formula
  desc "Manage environment variables using AWS KMS and S3"
  homepage "https://github.com/madebymany/kmsenv"
  url "https://github.com/dcoker/biscuit/releases/download/v0.1.2/biscuit-darwin_amd64.tar.gz"
  version "0.1.2"
  sha256 "34119e91333ae01ada2b936aca4ca2ea6b8cc8eeb28b31fecfecb1b5d080b497"

  def install
    system "mv", "biscuit", "biscuit"
    bin.install "biscuit"
  end

  test do
    system "#{bin}/biscuit"
  end
end
