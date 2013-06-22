Create a nice MOTD, complete with ASCII-art, witty quote, and fancy border.

Requires [fortune] and [figlet].

# Usage

    [$]> motd-creator -h
    Usage: motd-creator [options]
            --font VAL
            --fortune-file VAL
            --width VAL

# Example

    [$]> hostname
    geror
    [$]> motd-creator --font cybermedium --fortune-file startrek --width 60
    ~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*
    *                                                          *
    ~                ____ ____ ____ ____ ____                  ~
    *                | __ |___ |__/ |  | |__/                  *
    ~                |__] |___ |  \ |__| |  \                  ~
    *                                                          *
    ~            Hailing frequencies open, Captain.            ~
    *                                                          *
    ~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*

[fortune]: http://en.wikipedia.org/wiki/Fortune_(Unix)
[figlet]: http://www.figlet.org/

