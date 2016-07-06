require 'formula'

class Moltar < Formula
  homepage 'https://github.com/madebymany/moltar'
  version '1467810509'
  sha256 'c0d297921e92428dc1f2507086544dbd7ee083f54cc01aec3794d12cc52ac52f'
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
