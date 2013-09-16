require 'formula'

class Pass < Formula
  homepage 'https://github.com/madebymany/password-store'
  url 'https://github.com/madebymany/password-store/archive/v2.0.0-pre1.tar.gz'
  sha256 '7dd04061204158ca03f4af73ba93f5600cf40769eba4972079edc8e699a8fbec'
  version '2.0.0-pre1'

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
