#!/bin/bash
# -*- mode: shell-script; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# ex: ts=8 sw=4 sts=4 et filetype=sh

depends() {
    echo systemd
}

install() {
    dracut_install xenstore \
        $systemdsystemunitdir/proc-xen.mount \
        $systemdsystemunitdir/xenserver-pv-version.service \
        $systemdsystemunitdir/sysinit.target.wants/xenserver-pv-version.service
}
