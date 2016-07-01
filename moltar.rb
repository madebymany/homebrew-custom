require 'formula'

class Moltar < Formula
  homepage 'https://github.com/madebymany/moltar'
  version '1467378651'
  sha256 '7a6caec7f3682204aafed68bbc522fdfb51e9ba69a11353f01528c3c2c40e63e'
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
