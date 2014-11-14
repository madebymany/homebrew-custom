require 'formula'

class Moltar < Formula
  homepage 'https://github.com/madebymany/moltar'
  version '1415898399'
  sha256 '1874f1a69066f0c53d115b8bf7c081a8c4acf5e71622168204b1f5d0b93b4d9c'
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
