require 'formula'

class Pharod < Formula
  homepage 'https://github.com/madebymany/pharod'
  version '1427115488'
  sha256 '65c9be67e706d25247ba983219032100b31757221914f6c4c72853ac0ded5295'
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
