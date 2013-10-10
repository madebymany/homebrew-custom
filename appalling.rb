require 'formula'

class Appalling < Formula
  homepage 'https://github.com/madebymany/appalling-cmd'
  version '0.1'
  url 'https://github.com/madebymany/appalling-cmd/archive/v0.1.tar.gz'
  sha1 '89699b41f32f45556046c10068c37a4695205ad1'

  head 'git@github.com:madebymany/appalling-cmd.git'

  def install
    system "mkdir -p #{bin}"
    system "cp appalling #{bin}/appalling"
  end

  def test
    system "#{bin}/appalling", "-h"
  end
end
