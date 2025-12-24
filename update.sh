for pkg in ./srcpkgs/*; do
    if [ -d "$pkg" ] && [ -f "$pkg/template" ]; then
        ./xbps-src update-check "$(basename $pkg)"
    fi
done
