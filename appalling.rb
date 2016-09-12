require 'formula'

class Appalling < Formula
  homepage 'https://github.com/madebymany/appalling-cmd'
  version '0.5'
  url "https://github.com/madebymany/appalling-cmd/archive/#{version}.tar.gz"
  sha256 '53eb22b886a8a737acc27be12462d05649278b106b01cad220e35d86ea9c9f1c'

  head 'git@github.com:madebymany/appalling-cmd.git'

  def install
    system "mkdir -p #{bin}"
    system "cp appalling #{bin}/appalling"
  end

  def test
    system "#{bin}/appalling", "-h"
  end
end
