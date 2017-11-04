#!/usr/bin/env bash
#
# tbjers/dot-tilix ellipsis package

pkg.link() {
  case $(os.platform) in
    linux)
      fs.link_file themes/one-dark.json "$HOME/.config/tilix/themes/one-dark.json"
      ;;
  esac
}

pkg.install() {
  case $(os.platform) in
    linux)
      if utils.cmd_exists add-apt-repository; then
        sudo add-apt-repository ppa:webupd8team/terminix
        sudo apt-get update
        sudo apt-get install -y tilix
      fi
      ;;
  esac
}
