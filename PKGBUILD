# Contributor: Roman Komkov <r.komkov@gmail.com>
pkgname=tidybattery
pkgver=20111001
pkgrel=1
pkgdesc="Lightweight GTK tray battery monitor. Python fork of slimebattery"
arch=('any')
url="https://bbs.archlinux.org/viewtopic.php?pid=997284"
license=('GPL')
depends=(python2 gtk2 acpi)
makedepends=()
source=(http://heap.zloduch.cz/software/scripts/$pkgname)
md5sums=('7bcb768ee7dc19e199abf83c25c624a3')

package () {
  cd "$srcdir"
  install -D -m 0755 tidybattery "$pkgdir"/usr/bin/tidybattery
}

