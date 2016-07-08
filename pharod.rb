require 'formula'

class Pharod < Formula
  homepage 'https://github.com/madebymany/pharod'
  version '1461677196'
  sha256 '262a94810e02cb70ad550c55419fa11ce86bb9734916f2553eca9692c28175c2'
  url "https://mxm-golang-binaries.s3.amazonaws.com/pharod/pharod-#{version}.tar.gz"

  def install
    bin.install "pharod"
    bin.install "pharodctl"
    bin.install "pharod-start"
    bin.install "pharod-stop"
  end

  def caveats; <<-EOS.undent
    After starting boot2docker, use `pharod-start` to start the daemon,
    and `pharod-stop` to stop it.
    EOS
  end
end
