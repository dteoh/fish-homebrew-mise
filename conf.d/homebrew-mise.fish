# Most people don't change homebrew defaults, so the first test should
# be pretty fast. If the defaults change, try bypassing the full
# `brew --prefix <pkg>` bootup. Otherwise, get homebrew to do it all.
if test -x /opt/homebrew/opt/mise/bin/mise
    /opt/homebrew/opt/mise/bin/mise activate fish | source
else if test -x /usr/local/opt/mise/bin/mise
    /usr/local/opt/mise/bin/mise activate fish | source
else 
    set brew_prefix (brew --prefix mise)
    if test -x $brew_prefix/bin/mise
        $brew_prefix/bin/mise activate fish | source
    end
end
