require 'formula'

class Pass < Formula
  homepage 'https://github.com/madebymany/password-store'
  version '2.0.0-pre2'
  url 'https://github.com/madebymany/password-store/archive/v2.0.0-pre2.tar.gz'
  sha256 'cc194b12b530fecdb3a1b94c93f0e0c3308a90ac289452af51e96777bf758b5d'

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
