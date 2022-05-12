+++
fragment = "content"
#disabled = true
date = "2022-05-11"
weight = 200
#background = "success"

title = "Installation"
#subtitle = "Full width content fragment"
#title_align = "left" # Default is center, can be left, right or center
+++

**Building from source**

A detailed description on how to build from source can be found here: [Installing](https://open62541.org/doc/current/installing.html)

**Prebuilt packages**

Prebuild binaries
You can always find prebuild binaries for every release on our [Github Release Page.](https://github.com/open62541/open62541/releases)

<!--- Nightly single file releases for Linux and Windows of the last 50 commits can be found here: https://open62541.org/releases/ --->

**OS Specific packages**

Debian packages can be found in our official PPA:
* Daily Builds (based on master branch): https://launchpad.net/~open62541-team/+archive/ubuntu/daily
* Release Builds (starting with Version 1.0): https://launchpad.net/~open62541-team/+archive/ubuntu/ppa

To install the open62541-dev stable package in Ubuntu, use these lines:

```
sudo add-apt-repository ppa:open62541-team/ppa
sudo apt-get update
sudo apt-get install libopen62541-1-dev
```