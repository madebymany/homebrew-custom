require 'formula'

class Pharod < Formula
  homepage 'https://github.com/madebymany/pharod'
  version '1461149290'
  sha256 '627615c7533ddd9741609d967059677afb374bf1764dfe1cd6d980764523803b'
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
