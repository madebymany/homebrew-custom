require 'formula'

class Pharod < Formula
  homepage 'https://github.com/madebymany/pharod'
  version '1461577992'
  sha256 'ea225da64aca80d7abceb9cdb2d9ff0b0e54ac03817217c242c65da9d3c5e859'
  url "https://mxm-golang-binaries.s3.amazonaws.com/pharod/pharod-#{version}.tar.gz"

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
