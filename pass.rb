require 'formula'

class Pass < Formula
  homepage 'https://github.com/madebymany/password-store'
  version '2.0.0-pre3'
  url 'https://github.com/madebymany/password-store/archive/v2.0.0-pre3.tar.gz'
  sha256 '08b6703e02d591700e444286ff9972917d615dd76b97a2cb195bdf1813b57d4e'

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
