#!/usr/bin/env zsh
# vim: set sw=4 ts=4 et :

function gitlog() {
    local commit_hash="echo {} | grep -o '[a-f0-9]\{7\}' | head -1"
    local view_commit="${commit_hash} | xargs -I %"
}
