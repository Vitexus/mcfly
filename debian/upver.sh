VERSION=`head -n 4 Cargo.toml | grep version | awk -F '"' '{print $2}'`
dch -v ${VERSION} -m "v${VERSION} release"
echo forcing package version to ${VERSION}
head debian/changelog
