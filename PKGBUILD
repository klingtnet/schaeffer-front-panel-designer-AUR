# Maintainer: Andreas Linz <alinz@klingt.net>
# based on https://aur.archlinux.org/packages/front-panel-designer/

pkgname=schaeffer-front-panel-designer
pkgver=5.1.1
ghpkgrel=''
pkgrel=1
pkgdesc='Front Panel Designer is a free program that lets you easily design the most diverse custom-fit front panels, enclosures and milled parts.'
arch=('x86_64')
url='http://www.schaeffer-ag.de/'
license=('custom')
provides=('FrontDesign' 'FrontDesign-Order')
conflicts=('front-panel-designer')
depends=('libpng12')
options=(!strip)
source=("http://www.schaeffer-ag.de/fileadmin/downloads/FrontDesign-EU-${pkgver}-amd64.deb")
md5sums=('97f2ef4e678e8e51838b3a125a18f938')

package() {
    cd $srcdir
    tar -xzf data.tar.gz
    
    mkdir -p "$pkgdir/opt"
    cp -r "$srcdir/opt/FrontDesign" "$pkgdir/opt"
    mkdir -p "$pkgdir/usr/bin"
    ln -s "$srcdir/opt/FrontDesign/bin/FrontDesign" "$pkgdir/usr/bin/FrontDesign"
    ln -s "$srcdir/opt/FrontDesign/bin/FrontDesign-Order" "$pkgdir/usr/bin/FrontDesign-Order"

    install -Dm 644\
        "$srcdir/usr/share/applications/FrontDesign.desktop"\
        "$pkgdir/usr/share/applications/front-panel-express.desktop"
    install -Dm 644\
        "$srcdir/usr/share/applications/FrontDesign-Order.desktop"\
        "$pkgdir/usr/share/applications/front-panel-express-order.desktop"

    install -Dm 644\
        "$srcdir/opt/FrontDesign/share/FrontDesign/License/License_EN.html"\
        "$pkgdir/usr/share/licenses/$pkgname/License.html"
    install -Dm 644\
        "$srcdir/opt/FrontDesign/share/FrontDesign/License/ThirdPartyLicenses.html"\
        "$pkgdir/usr/share/licenses/$pkgname/ThirdPartyLicenses.html"
}
