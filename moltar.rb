require 'formula'

class Moltar < Formula
  homepage 'https://github.com/madebymany/moltar'
  version '1412073904'
  sha256 'c603dbe9079805ffdce7f469195be330a9fd5b66ecd4fc21bd1b1283117f1ba4'
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
