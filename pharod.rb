require 'formula'

class Pharod < Formula
  homepage 'https://github.com/madebymany/pharod'
  version '1414164128'
  sha256 'aff415164d5d16b3ee25a4500a9975b383a207bcd1f1ea3365ebe98e2d93003a'
  url "https://mxm-golang-binaries.s3.amazonaws.com/pharod/pharod-#{version}.tar.gz"

  head 'https://github.com/madebymany/moltar.git'

  def install
    bin.install "pharod"
    bin.install "pharod-start"
  end

  def caveats; <<-EOS.undent
    After starting boot2docker, use `pharod-start` to start the daemon,
    and `pkill -x pharod` to stop it.
    EOS
  end
end
