require 'formula'

class Moltar < Formula
  homepage 'https://github.com/madebymany/moltar'
  version '1405954624'
  sha256 'acc1b0476d006bffa6da34ce91e7bc4771b1cce8e8d67df5b2bc706967c69872'
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
