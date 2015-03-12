require 'formula'

class Pharod < Formula
  homepage 'https://github.com/madebymany/pharod'
  version '1426174398'
  sha256 '7067ac4c7d376acf943274fc9e3ac1f72603477bb6968e360cea36c780c5801f'
  url "https://mxm-golang-binaries.s3.amazonaws.com/pharod/pharod-#{version}.tar.gz"

  head 'https://github.com/madebymany/moltar.git'

  def install
    bin.install "pharod"
    bin.install "pharod-start"
    bin.install "pharod-stop"
  end

  def caveats; <<-EOS.undent
    After starting boot2docker, use `pharod-start` to start the daemon,
    and `pharod-stop` to stop it.
    EOS
  end
end
