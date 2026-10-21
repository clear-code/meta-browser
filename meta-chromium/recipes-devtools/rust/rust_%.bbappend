# Chromium 150 runs rustfmt after bindgen. The Rust recipe only installs it
# for target and nativesdk builds by default; native builds need it as well.
do_install:append:class-native() {
    rust_runx install rustfmt
    patchelf --set-rpath '$ORIGIN/../lib' ${D}${bindir}/rustfmt
}
