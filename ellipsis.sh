#!/usr/bin/env bash
#
# tbjers/dot-tilix ellipsis package

pkg.link() {
  case $(os.platform) in
    linux)
      mkdir -p "$HOME/.config"
      fs.link_file common "$HOME/.config/tilix"
      ;;
  esac
}

pkg.install() {
  case $(os.platform) in
    linux)
      if utils.cmd_exists add-apt-repository; then
        if ! utils.cmd_exists tilix; then
          sudo add-apt-repository ppa:webupd8team/terminix
          sudo apt-get update
          sudo apt-get install -y tilix
        fi
      fi
      ;;
  esac
}
