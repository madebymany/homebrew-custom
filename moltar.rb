require 'formula'

class Moltar < Formula
  homepage 'https://github.com/madebymany/moltar'
  version '1415988260'
  sha256 '55324a3179c46a7ae79e72b96cb3ba48c57c06f26d9d3873ba6dbb029490ed39'
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
