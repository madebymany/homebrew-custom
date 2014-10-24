require 'formula'

class Pharod < Formula
  homepage 'https://github.com/madebymany/pharod'
  version '1414167806'
  sha256 '7da231beb58a5f71c5a0be09ca1599c6b5e32d0d8824504c6c661cfe4cc9a4da'
  url "https://mxm-golang-binaries.s3.amazonaws.com/pharod/pharod-#{version}.tar.gz"

  head 'https://github.com/madebymany/moltar.git'

  def install
    bin.install "pharod"
    bin.install "pharod-start"
    bin.install "pharod-configure-resolver"
  end

  def post_install
    system "pharod-configure-resolver"
  end

  def caveats; <<-EOS.undent
    After starting boot2docker, use `pharod-start` to start the daemon,
    and `pkill -x pharod` to stop it.
    EOS
  end
end
