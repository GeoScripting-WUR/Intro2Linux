# Installing Linux on your own computer

In some cases you might want to install and/or run Linux on your own device; maybe you want to work from home having direct access to all your files, maybe you need to run a scientific program that works best on Linux, or maybe there's an old laptop that you'd like to revive, etc. In all cases, it's useful to know how to start.

## Distribution selection

Linux comes in a variety of distributions, fit for different purposes and needs. Choosing an appropriate distribution is an important first step. If you choose poorly, you will still be able to do what you want for the most part, but it may not be enjoyable; it's like eating soup with a fork!

There are multiple aspects to consider when choosing a distribution, of which most important are the specialisation, release model, and software availability. They are discussed below, in the section "Distribution notes". You can also use an [online distribution chooser](https://distrochooser.de/) that gives a list of suggestions quite like a personality test (but, like a personality test, should not be followed blindly).

## Installation and running

Whether you want to run a LiveCD or install the distribution on disk, you need to create an installation medium. The name "LiveCD" is historic: distributions used to be written onto CDs and run from them, but nowadays LiveCDs are almost always written on USB sticks instead. The same ISO file is (almost always) fit to be written on both a CD and a USB stick. Note that if you want to run a LiveCD, the speed of the USB stick is quite important (USB3 is recommended).

To write ISO files onto a USB stick from Windows, there is a variety of tools available: [Rufus](https://rufus.akeo.ie/), [Win32 Disk Imager](https://sourceforge.net/projects/win32diskimager/), [Unetbootin](https://unetbootin.github.io/). Linux and macOS can write ISO files onto USB sticks directly with the `dd` command.

After the USB stick is ready, the target computer needs to be told to boot from it. This is specific to each computer: some will boot from USB media automatically, some require you to hit a button on startup to go into a boot menu (commonly Delete, F9, F1). If the computer is relatively new, it is likely that it has Secure Boot enabled, which may interfere with Linux installation, in which case you need to disable it in the UEFI properties (again this varies between computers).

Once you boot from the USB stick, you will often have a choice of running the distribution live or installing it. Running live limits what files are saved, so it's useful for checking the distribution out and performing system repair tasks, but for longer-term usage installation is necessary. Note that you can also install distributions onto external hard drives, in case you don't want to change any data on an internal hard drive.

## Desktop environment

When installing, most distributions (Ubuntu excluded) will ask you to choose your preferred desktop environment. Currently there are two major desktop environments: KDE Plasma 5, which is a highly-configurable, Windows-like desktop environment; and GNOME 3, a highly-polished, Android-like desktop environment. There are also several smaller and lighter desktop environments, reminiscent of older Windows releases, such as Cinnamon, LXQt, Xfce and MATE. The choice of desktop environment highly depends on your taste and how powerful the target computer is (running the major desktop environments on old laptops is not recommended).

The Ubuntu family is mostly seggregated by desktop environment lines, which gives a good opportunity to try them out from LiveCDs. Ubuntu itself uses GNOME 3, Kubuntu uses KDE Plasma 5, Lubuntu uses LXQt, Xubuntu uses Xfce, Linux Mint uses Cinnamon and MATE, Elementary OS uses Pantheon (macOS-like). You can install any desktop environment on any distribution, but the level of support varies, so it is better to stick with the default desktop environment of a distribution (if there is a default).

## Partitioning

Partitioning is dividing the hard disk into parts for different operating systems. Most distributions have a partitioning tool that suggests reasonable partitioning defaults, namely to shrink an existing partition to make space and create new partitions for the Linux distribution. However, always double-check the partitioning setup: an erased partition is not recoverable! It is also always highly recommended to back up all important data before partitioning.

## Rebooting

And that's it! After the installation is finished, remove the USB stick and boot the computer up. If all went well, you should see the bootloader with options to boot Linux (the default) and Windows (if it was installed).

# Distribution notes

## Release model

Distributions are clasified by release model into long term support, regular release and rolling release distributions.

Long term support distributions do major releases several years apart, and the updates for the software are almost exclusively security updates. These distributions are therefore easy to maintain, because updates are infrequest and very unlikely to break anything, and you only need to do a big update every few years. They are favoured by enterprise users, where maintinaing a large number of computers can become a nightmare otherwise. Long term release distributions include Red Hat Enterprise Linux, CentOS, Ubuntu LTS releases, Debian and openSUSE Leap. In comparison, Windows releases (up to Windows 8) can also be considered long term support.

Regular release distributions make a new release several times a year. This allows users to get access to the latest software much faster than long term release distributions, but at a cost of having to update more often, and updates may introduce changes you would not expect. Overall regular releases are a good trade-off between long term support and rolling release distributions. Regular release distributions include the Ubuntu family and Fedora. Windows 10 could also (arguably) be considered to have a regular release model.

Rolling release distributions offer the latest software at all times. There are no major releases of these distributions, because every component of these distributions is constantly updated. Rolling release distributions are most suited for developers and scientists that need easy access to the latest tools and software there is. However, this comes at a price that updates may change your workflow without warning or in some cases even break the system, so some knowledge about troubleshooting is necessary. Rolling release distributions include openSUSE Tumbleweed, the Arch family (Antergos, Manjaro) and Gentoo.

## Specialisation

Distributions may be general-purpose or specialised. OSGeo Live is a typical specialised distribution: it is made to showcase geoinformation tools, so it is convenient for quickly setting up a GeoServer or PostGIS. However, it has a lot of tools that you most likely don't need, and it is not supported by the community, so finding help for it may be challenging. Other examples of specialised distributions are Kali, Tails and GPartEd. In comparison, general-purpose distributions such as openSUSE, Debian, Fedora, Ubuntu (including derivatives), Puppy, Arch and Gentoo are all supported by large communities that are available for help, and they only come with the basic system. You can then install all the necessary software (including all the geoinformation tools you need) yourself.

If there is a single special purpose that you need to cover, or if you want to run a live system, choosing a specialised distribution makes for the quickest option to get what you need up and running. But if you want to customise your system and use it for various tasks, a general-purpose distribution is more fitting.

## Software availability

Different distributions have different ways of packaging and distributing software, and the number of developers working on packaging also differ.

Most proprietary software, such as CAD and other workstation software, games, non-free drivers, etc. targets Ubuntu (sometimes specifically the LTS releases), and all Ubuntu derivatives are compatible with this proprietary software as well. Ubuntu also has a system called PPA for unofficial, user-maintained open-source packages. OpenSUSE, the Arch family and Fedora are less likely to have official support for proprietary software, but they often have more or better integrated free software packages than Ubuntu due to the ease of creating packages (Open Build Service for openSUSE, AUR for the Arch family, Copr for Fedora).

The rest of the distributions tend to have a lower number of packages available, as they are smaller. That is fine if only the common software is needed (web browsers, office suites, major desktop environments), but may become a problem if specialised, uncommon software is required.

## Distribution traits

The website [DistroWatch](http://distrowatch.com/) lists the most popular distributions and gives more details about them. As a quick overview, here are the traits of some of the top general-purpose distributions:

* Ubuntu: (Probably) most popular, GNOME 3-based, LTS and regular release, corporate (Canonical Ltd.).
* Kubuntu, Lubuntu, Xubuntu: Ubuntu with KDE Plasma 5, LXQt, Xfce respectively.
* Mint: Ubuntu with more preinstalled software, supports Cinnamon and MATE.
* Debian: Long term support, only free software, community-based.
* openSUSE: Long term support (Leap) and fast rolling release (Tumbleweed) versions, includes a graphical control panel, based on corporate (SUSE Linux Enterprise).
* CentOS: Very long term support, based on corporate (Red Hat Enterprise Linux).
* Fedora: Regular release, corporate (Red Hat Enterprise Linux) bases on it
* Puppy: Aimed at old computers specifically, community-based.
* Mageia: Aimed at user-friendliness, includes a graphical control panel, community-based.
* Zorin OS: Aimed at easier migration from Windows to Linux, community-based.
* Arch: Aimed at maximum configurability, but requires knowledge to set up (no installer); fast rolling release, community-based.
* Antergos, Manjaro: Arch-based, but with an installer. Manjaro deviates from Arch more (slower rolling release).
* Gentoo: Even more configurability than Arch, the fastest and most secure, but requires building all software from source; slower rolling release, community-based.
