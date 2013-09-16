require 'formula'

class Pass < Formula
  homepage 'https://github.com/madebymany/password-store'
  url 'https://github.com/madebymany/password-store/archive/v1.0-pre1.tar.gz'
  sha256 '44e7fd8842558aa199f7c88a4b6a02561e79275e7a0a1c4c4e25b197da8d23f6'

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
