require 'formula'

class Moltar < Formula
  homepage 'https://github.com/madebymany/moltar'
  version '1467726557'
  sha256 '7e99c0237978220fe096adbd1b24bea475a0ad40ffff9b6b67729b6bff078832'
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
