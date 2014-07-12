#!/bin/sh
# -*- mode: shell-script; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# ex: ts=8 sw=4 sts=4 et filetype=sh

export usr="$(getarg usr=)"

if [ "${root%%:*}" = "gptprio" ]; then
    die "root=gptprio is no longer supported"
elif [ "${usr%%:*}" = "gptprio" ]; then
    rootok=1
fi
