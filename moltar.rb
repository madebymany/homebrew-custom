require 'formula'

class Moltar < Formula
  homepage 'https://github.com/madebymany/moltar'
  version '1412073904'
  sha256 'cdbb427a43013ffa0956ba23f0184b3bae7d370153d9b6b1ea37d33e384531c3'
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
