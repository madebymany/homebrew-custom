require 'formula'

class Moltar < Formula
  homepage 'https://github.com/madebymany/moltar'
  version '1496757558'
  sha256 'f62f8506fcffb3accdb79e69f9611d1f799f2c70842e297e312bdb3f15f46c5c'
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
