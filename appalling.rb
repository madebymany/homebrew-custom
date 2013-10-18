require 'formula'

class Appalling < Formula
  homepage 'https://github.com/madebymany/appalling-cmd'
  version '0.5'
  url "https://github.com/madebymany/appalling-cmd/archive/#{version}.tar.gz"
  sha1 'dced43199b64163c82c392fdc9910fab982c01d0'

  head 'git@github.com:madebymany/appalling-cmd.git'

  def install
    system "mkdir -p #{bin}"
    system "cp appalling #{bin}/appalling"
  end

  def test
    system "#{bin}/appalling", "-h"
  end
end
