require 'formula'

class Moltar < Formula
  homepage 'https://github.com/madebymany/moltar'
  version '1407248053'
  sha256 '1ed0b0218667be24569761d7e31baa2a0fb16075c42e8bd8e08c2d36921160b0'
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
