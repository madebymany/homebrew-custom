require 'formula'

class Pharod < Formula
  homepage 'https://github.com/madebymany/pharod'
  version '1414412750'
  sha256 '398b644fdd376ad1a4aa2744a2458e5a47073f2a056876f02180eed36a4e2437'
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
