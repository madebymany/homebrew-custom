require 'formula'

class Pharod < Formula
  homepage 'https://github.com/madebymany/pharod'
  version '1414409011'
  sha256 'fdecc692928bea108f9f947948652d433766cf7a8a53e64f9006a3d07b1ea29f'
  url "https://mxm-golang-binaries.s3.amazonaws.com/pharod/pharod-#{version}.tar.gz"

  head 'https://github.com/madebymany/moltar.git'

  def install
    bin.install "pharod"
    bin.install "pharod-start"
    bin.install "pharod-stop"
    bin.install "pharod-configure-resolver"
  end

  def post_install
    system "pharod-configure-resolver"
  end

  def caveats; <<-EOS.undent
    After starting boot2docker, use `pharod-start` to start the daemon,
    and `pharod-stop` to stop it.
    EOS
  end
end
