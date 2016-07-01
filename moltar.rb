require 'formula'

class Moltar < Formula
  homepage 'https://github.com/madebymany/moltar'
  version '1467372019'
  sha256 '23f8b5fc5d2fff90e11115950b5d643333f5aabccac45095822eec540af7cc78'
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
