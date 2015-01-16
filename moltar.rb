require 'formula'

class Moltar < Formula
  homepage 'https://github.com/madebymany/moltar'
  version '1421406159'
  sha256 '9f889cb3a82e30771c5dc0d496a8447a80bd9cb757f487159b9e239b8c06a4c8'
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
