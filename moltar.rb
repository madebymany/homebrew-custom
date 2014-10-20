require 'formula'

class Moltar < Formula
  homepage 'https://github.com/madebymany/moltar'
  version '1413806214'
  sha256 'bcc258af8910adf3a7a33373c0dada3dae12cef35ed5c96beaf840c4ba251f1a'
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
