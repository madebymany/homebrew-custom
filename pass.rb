require 'formula'

class Pass < Formula
  homepage 'https://github.com/madebymany/password-store'
  url 'https://github.com/madebymany/password-store/archive/v1.0-pre2.tar.gz'
  sha256 'ad7af6e0b6b2a1816be9234769de00000fdb522044af4513a8c598a3bb6d0ce5'
  version '1.0-pre2'

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
