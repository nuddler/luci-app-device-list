<!-- markdownlint-configure-file {
  "MD013": {
    "code_blocks": false,
    "tables": false,
    "line_length":200
  },
  "MD033": false,
  "MD041": false
} -->

[license]: /LICENSE
[license-badge]: https://img.shields.io/github/license/jerrykuku/luci-app-device-list?style=flat-square&a=1
[prs]: https://github.com/jerrykuku/luci-app-device-list/pulls
[prs-badge]: https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square
[issues]: https://github.com/jerrykuku/luci-app-device-list/issues/new
[issues-badge]: https://img.shields.io/badge/Issues-welcome-brightgreen.svg?style=flat-square
[release]: https://github.com/jerrykuku/luci-app-device-list/releases
[release-badge]: https://img.shields.io/github/v/release/jerrykuku/luci-app-device-list?include_prereleases&style=flat-square
[download]: https://github.com/jerrykuku/luci-app-device-list/releases
[download-badge]: https://img.shields.io/github/downloads/jerrykuku/luci-app-device-list/total?style=flat-square
[contact]: https://t.me/jerryk6
[contact-badge]: https://img.shields.io/badge/Contact-telegram-blue?style=flat-square
[en-us-link]: /README.md
[zh-cn-link]: /README_ZH.md
[en-us-release-log]: /RELEASE.md
[zh-cn-release-log]: /RELEASE_ZH.md
[config-link]: https://github.com/jerrykuku/luci-app-device-list/releases
[lede]: https://github.com/coolsnowwolf/lede
[official]: https://github.com/openwrt/openwrt
[immortalwrt]: https://github.com/immortalwrt/immortalwrt

<div align="center">
<img src="https://raw.githubusercontent.com/jerrykuku/staff/master/argon_title4.svg">

# Argon Theme Config Plugin

You can set the blur and transparency of the login page of argon theme,

and manage the background pictures and videos.

[![license][license-badge]][license]
[![prs][prs-badge]][prs]
[![issues][issues-badge]][issues]
[![release][release-badge]][release]
[![download][download-badge]][download]
[![contact][contact-badge]][contact]

**English** |
[简体中文][zh-cn-link]

<img src="https://raw.githubusercontent.com/jerrykuku/staff/master/argon2.gif">
</div>

## Branch Introduction

There are currently two main branches that are adapted to different versions of the **OpenWrt** source code.  
The table below will provide a detailed introduction:

| Branch | Version | Description                        | Matching source                                           |
| ------ | ------- | ---------------------------------- | --------------------------------------------------------- |
| master | v1.x.x  | Support the latest version of LuCI | [Official OpenWrt][official] • [ImmortalWrt][immortalwrt] |
| 18.06  | v0.9.x  | Support the 18.06 version of LuCI  | [Lean's LEDE][lede]                                         |

## Getting started

### Build for Lean's LEDE project

```bash
cd lede/package/lean
rm -rf luci-app-device-list # if have
git clone -b 18.06 https://github.com/jerrykuku/luci-app-device-list.git luci-app-device-list
make menuconfig #choose LUCI->Application->luci-app-device-list
make -j1 V=s
```

### Build for OpenWrt official SnapShots and ImmortalWrt

```bash
cd openwrt/package
git clone https://github.com/jerrykuku/luci-app-device-list.git
make menuconfig #choose LUCI->Application->luci-app-device-list
make -j1 V=s
```

## Contributors

<a href="https://github.com/jerrykuku/luci-app-device-list/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=jerrykuku/luci-app-device-list" />
</a>

Made with [contrib.rocks](https://contrib.rocks).

## Related Projects

- [luci-theme-argon](https://github.com/jerrykuku/luci-theme-argon): Argon theme
- [openwrt-package](https://github.com/jerrykuku/openwrt-package): My OpenWrt package
- [CasaOS](https://github.com/IceWhaleTech/CasaOS): A simple, easy-to-use, elegant open-source Personal Cloud system (My current main project)
