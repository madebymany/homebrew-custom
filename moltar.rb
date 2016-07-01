require 'formula'

class Moltar < Formula
  homepage 'https://github.com/madebymany/moltar'
  version '1467380194'
  sha256 '6de510046011261b410ddbe8328b9817c26856ccda958760b3b40b4ed3f03e70'
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
