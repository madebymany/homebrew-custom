require 'formula'

class Appalling < Formula
  homepage 'https://github.com/madebymany/appalling-cmd'
  version '0.2'
  url "https://github.com/madebymany/appalling-cmd/archive/#{version}.tar.gz"
  sha1 '33eea6abd0e241b796967cdbd2aab9bc44db45c9'

  head 'git@github.com:madebymany/appalling-cmd.git'

  def install
    system "mkdir -p #{bin}"
    system "cp appalling #{bin}/appalling"
  end

  def test
    system "#{bin}/appalling", "-h"
  end
end
