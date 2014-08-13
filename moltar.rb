require 'formula'

class Moltar < Formula
  homepage 'https://github.com/madebymany/moltar'
  version '1407935451'
  sha256 'cccbc1a9390d8dca8eb1d980a34ef3493b0055e11a4d862d6d52ace07d7bd686'
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
