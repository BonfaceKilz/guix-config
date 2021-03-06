(define-module (guix_manifest))

(use-modules (guix profiles)
             (gnu packages)
             (ice-9 match)
             (srfi srfi-1))

(define %gui-apps
  "arandr"
  "calibre"
  "evince"
  "feh"
  "klavaro"
  "thunar"
  "vlc"
  "wireshark")

(define %guix-system-apps
  "guile"
  "guile-colorized"
  "shepherd")

(define %cli-apps
  "ansible"
  "aspell"
  "aspell-dict-en"
  "autoconf"
  "autoconf-archive"
  "automake"
  "axel"
  "boost"
  "borg"
  "clisp"
  "cmake"
  "conda"
  "dmidecode"
  "dos2unix"
  "fortune-mod"
  "gcc-toolchain"
  "ghc"
  "ghc-haskell-src-exts"
  "git"
  "git"
  "glibc-locales"
  "glibc-utf8-locales"
  "graphviz"
  "guile-hall"
  "guile-readline"
  "guix"
  "htop"
  "inxi"
  "isync"
  "jmtpfs"
  "jq"
  "lcov"
  "lzip"
  "tmux"
  "trash-cli"
  "util-linux-with-udev"
  "hello"
  "mariadb-connector-c"
  "mosh"
  "mpv"
  "ncdu"
  "nethogs"
  "newsboat"
  "nmap"
  "notmuch"
  "nss-certs"
  "nyxt"
  "obs"
  "p7zip"
  "perf"
  "plantuml"
  "poppler"
  "purescript"
  "racket"
  "readline"
  "recutils"
  "redis"
  "ruby"
  "rust"
  "screen"
  "shellcheck"
  "simple-scan"
  "simplescreenrecorder"
  "sox"
  "strace"
  "surf"
  "texlive-beamer"
  "the-silver-searcher"
  "w3m"
  "xbindkeys"
  "xcb-proto"
  "xdot"
  "xfce4-screenshooter"
  "xournal"
  "youtube-dl"
  "zathura"
  "zsh")

(define %emacs
  "emacs-geiser"
  "emacs-no-x-toolkit"
  "emacs-pdf-tools"
  "emacs-xelb")

(define %python
  "python-autopep8"
  "python-mypy"
  "python-pip"
  "python-pylint"
  "python-redis"
  "python-yapf")

(define %libs/fonts
  "font-adobe-source-han-sans"
  "font-dejavu"
  "font-opendyslexic"
  "harfbuzz"
  "hicolor-icon-theme"
  "libgccjit"
  "libressl"
  "libvterm"
  "libx11"
  "libxcb"
  "libxft"
  "mailutils")

(packages->manifest
 (map (compose list specification->package+output)
      (append %cli-apps
              %emacs
              %guix-system-apss
              %libs/fonts
              %python
              %gui-apps)))
