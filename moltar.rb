require 'formula'

class Moltar < Formula
  homepage 'https://github.com/madebymany/moltar'
  version '1473938528'
  sha256 '1145c671aece30940bb66b5d98dc90302084a577ad89e678c79e0a91083fc21a'
  url "https://mxm-golang-binaries.s3.amazonaws.com/moltar/moltar-#{version}.gz"

  head 'https://github.com/madebymany/moltar.git'

  def install
    system "mv", "moltar-#{version}", "moltar"
    bin.install "moltar"
  end

  def test
    system "#{bin}/moltar"
  end
end
