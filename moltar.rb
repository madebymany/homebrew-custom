require 'formula'

class Moltar < Formula
  homepage 'https://github.com/madebymany/moltar'
  version '1417796893'
  sha256 'b7250cc0bea66e8600a4618b3ca931ced736958de5e68255156f5c45ec9c9647'
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
