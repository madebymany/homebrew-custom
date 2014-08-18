require 'formula'

class Moltar < Formula
  homepage 'https://github.com/madebymany/moltar'
  version '1408375302'
  sha256 'cd0aa93673941d4f90bdd9e1a02bc441554693f22cbe0c2b918c4c66365d8e6f'
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
