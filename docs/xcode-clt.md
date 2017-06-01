# Xcode Command Line Tools

### by Daniel Kehoe  
*Last updated 7 December 2016*

> Original article: http://railsapps.github.io/xcode-command-line-tools.html

How to install Apple Xcode Command Line Tools for macOS Sierra. Complete guide to installation.

Xcode is a large suite of software development tools and libraries from Apple. The Xcode Command Line Tools are part of XCode. Installation of many common Unix-based tools requires the GCC compiler. The Xcode Command Line Tools include a GCC compiler. This article shows how to install Xcode Command Line Tools to use the GCC compiler and more.

### Installing Ruby on Rails
If you are setting up your computer for developing web applications with Ruby on Rails, see this article for complete instructions:

Install Ruby on Rails – macOS Sierra

## Summary
1. Step 1. Upgrade Your System to macOS Sierra
1. Step 2. Open the Terminal Application
1. Step 3. Is XCode Already Installed?
1. Step 4. Enter Commands
1. Step 5. Install XCode Command Line Tools
1. Step 6. Verify Installation

### MacOS Sierra
To install the newest Xcode Command Line Tools, you’ll need the latest version of macOS. 
If you’ve owned your Mac for several years and haven’t updated macOS, be prepared to spend several hours updating the operating system.

See Apple’s instructions How to upgrade to macOS Sierra. 
You can install macOS 10.12 Sierra from the Mac App Store for free. Allow plenty of time for the download and installation (it may take several hours).

#### If You Updated to macOS Sierra
If you updated to macOS Sierra from an earlier version of macOS, and you previously installed Xcode Command Line Tools, 
you will need to install the new version of Xcode Command Line Tools as described here.

If you previously installed the full Xcode package, you will need to update Xcode to the newest version (Xcode 8 or newer). 
After updating Xcode, launch and run the Xcode application and accept the Apple license terms.

### Terminal Application
The Terminal application or console gives us access to the Unix command line, or shell. We call the command line the shell because it is the outer layer of the operating system’s internal mechanisms (which we call the kernel).

Find the macOS Terminal application by using the Command-Spacebar combination and searching for “Terminal.” It’s in the Applications/Utilities/ folder.

Try out the terminal application by entering a shell command:

```bash
$ whoami
```

Don’t type the $ character. The $ character is a cue that you should enter a shell command. This is a longtime convention that indicates you should enter a command in the terminal application. The Unix shell command whoami returns your username.

To learn more about Unix shell commands, read The Command Line Crash Course.

### Is Xcode Already Installed?
You don’t need the full Xcode package to get the Xcode Command Line Tools. You only need the full Xcode package if you are doing development of applications for the Apple operating systems. However, you may have previously installed the full Xcode package.

Check if the full Xcode package is already installed:

```bash
$ xcode-select -p
```

If you see:
```bash
/Applications/Xcode.app/Contents/Developer
```
the full Xcode package is already installed.

You will need to update Xcode to the newest version (Xcode 8 or newer). Go to the App Store application and check “Updates.” After updating Xcode, be sure to launch the Xcode application and accept the Apple license terms.

If you intend to install Ruby using RVM, and you see a file location that contains spaces in the path:
```
/Applications/Apple Dev Tools/Xcode.app/Contents/Developer
```
you must delete Xcode. RVM cannot accommodate spaces in a path so RVM will fail when you attempt to install Ruby. You can either install only the Xcode Command Line Tools (instructions below) or reinstall the full Xcode package.

### Install Xcode Command Line Tools
MacOS Sierra will alert you when you enter a command in the terminal that requires Xcode Command Line Tools. For example, you can enter gcc or make.

Try it. Enter:
```
$ gcc
```
You’ll see an alert box:

![alert Xcode Command Line Tools is required](http://railsapps.github.io/images/installing-mavericks-popup.png)

Alternatively, you can use a command to install Xcode Command Line Tools. It will produce a similar alert box. Note the double hyphen:
```
$ xcode-select --install
```
Click “Install” to download and install Xcode Command Line Tools.

The instructions in the alert box are confusing. You don’t need to "Get Xcode" from the App Store. Just click "Install" for the Xcode Command Line Tools. If you have a slow Internet connection, it may take many minutes.

If the download takes a very long time (over an hour) or fails, you can try an alternative. Go to https://developer.apple.com/downloads/more and enter your Apple ID and password. You'll be asked to agree to the terms of the Apple Developer Program. You'll see a list of software packages you can download. Look for the latest version of Command Line Tools and click to download the .dmg file. Downloading the .dmg file is much faster than waiting for the command-line-based download. Install the .dmg file by clicking on the package icon.

![downloading Xcode Command Line Tools](http://railsapps.github.io/images/installing-mavericks-download.png)

![installed Xcode Command Line Tools](http://railsapps.github.io/images/imstalling-mavericks-installed.png)

Verify that you’ve successfully installed Xcode Command Line Tools:

```
$ xcode-select -p
/Library/Developer/CommandLineTools
```
Just to be certain, verify that gcc is installed:

```
$ gcc --version
Configured with: --prefix=/Library/Developer/CommandLineTools/usr --with-gxx-include-dir=/usr/include/c++/4.2.1
Apple LLVM version 6.0 (clang-600.0.54) (based on LLVM 3.5svn)
Target: x86_64-apple-darwin14.0.0
Thread model: posix
```
On earlier versions of macOS, it was more difficult to install Xcode Command Line Tools. It required a huge download of the full Xcode package from the Mac App Store or registration as an Apple developer for a smaller Command Line Tools package. Mac OS X Mavericks made installation of Xcode Command Line Tools much simpler.

### Alternatives
The OSX GCC Installer is an open source project to provide the GCC compiler and related tools. In a recent blog post, Xcode, GCC, and Homebrew, the project maintainer recommends installing the Xcode Command Line Tools because the open source project is unable to duplicate the complete Apple package (notably, the Node software project isn’t supported).

### Start Coding!
With the GCC compiler installed, you can install any Unix system tools you need for software development.

