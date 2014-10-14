require 'formula'

class Moltar < Formula
  homepage 'https://github.com/madebymany/moltar'
  version '1413296839'
  sha256 '56d445e4db63976439064dd5f209417d1a6f2be3067ce226a46f9922941b01d4'
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
