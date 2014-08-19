require 'formula'

class Moltar < Formula
  homepage 'https://github.com/madebymany/moltar'
  version '1408459946'
  sha256 '98fa687fe6844aa370acd36a976bad61950a21b6d3de654072e80072f28d457a'
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
