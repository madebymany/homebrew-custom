require 'formula'

class Moltar < Formula
  homepage 'https://github.com/madebymany/moltar'
  version '1412951050'
  sha256 '1c2ef566d46247abda968c93472b9aa54a526f3c5b91d94504aae07112fd034d'
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
