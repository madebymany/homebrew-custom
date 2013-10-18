require 'formula'

class Appalling < Formula
  homepage 'https://github.com/madebymany/appalling-cmd'
  version '0.4'
  url "https://github.com/madebymany/appalling-cmd/archive/#{version}.tar.gz"
  sha1 'ebfcf07894ab760393fa7cc1dc434c8a00b8fabd'

  head 'git@github.com:madebymany/appalling-cmd.git'

  def install
    system "mkdir -p #{bin}"
    system "cp appalling #{bin}/appalling"
  end

  def test
    system "#{bin}/appalling", "-h"
  end
end
