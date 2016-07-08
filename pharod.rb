require 'formula'

class Pharod < Formula
  homepage 'https://github.com/madebymany/pharod'
  version '1435155427'
  sha256 '3393dd32c37deb7f48b3fb5ed2b33d46e049519a7cfe249b6381bc093a9dac39'
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
