require 'formula'

class Pass < Formula
  homepage 'https://github.com/madebymany/password-store'
  url 'https://github.com/madebymany/password-store/archive/v1.0-pre1.tar.gz'
  sha256 '9e01fbeee921adc4625da747451d277f365fcaaf7cdc985abb6d975a7d030cc3'

  head 'https://github.com/madebymany/password-store.git'

  depends_on 'pwgen'
  depends_on 'tree'
  depends_on 'gnu-getopt'
  depends_on 'gnupg2'

  def install
    system "make DESTDIR=#{prefix} PREFIX=/ install"
    zsh_completion.install "contrib/pass.zsh-completion" => "_pass"
  end

  def test
    system "#{bin}/pass", "--version"
  end
end
