#!/usr/bin/env bash
#
# tbjers/dot-tilix ellipsis package

pkg.link() {
  case $(os.platform) in
    linux)
      fs.link_files platform/linux
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
