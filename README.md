*Info*: This enumeration is work in progress.

# Making OS X even more awesome

OS X is an awesome operating system out of the box, but it can be further *awesomeified*
by a diverse set of tools, which are IMHO of utmost importance for developing. A nice
setup according to the steps below provides a convenient developing environment.

## Package manager

The installation of software in OS X is very easy. Normally you download a *.dmg
file, double click to mount it, and drag the application icon to the Application
folder. E voila: the application is installed.
However, software management can be made even more comfortable. Some drawbacks
exists:
* Maintaining multiple versions of the same program is cumbersome
* Keeping all the stuff up to date is a tedious task (especially if you work
with software with daily updates)

A package manager helps to overcome these major drawbacks and moreover keeps all
your software nicely managed in a dedicted location. The
[homebrew package manager](http://brew.sh/) and its extension [homebrew cask](http://caskroom.io/)
are essential.
For that you need to accept the licence agreement in Xcode and install the latest version in the app store.
Run the following commands to install brew and brew cask extension.
Keep in mind to get rid of all error and warning messages of brew doctor.
The terminal command chmod and chown may be helpful to handle most of the issues.

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew install caskroom/cask/brew-cask
```

In the following there is an example of some useful commands of brew. You may find general information on how to [search casks](https://github.com/caskroom/homebrew-cask#learn-more) and search [brew formulas](https://github.com/Homebrew/homebrew/tree/master/share/doc/homebrew#readme) useful.


```
brew cask search sublime
brew cask info sublime-text
brew cask install sublime-text
brew cask uninstall sublime-text
```


Install great stuff, which makes life of a developer easier (brew automatically installs dependencies).
Make *brew.sh* executable and run it via `./brew.sh`. The following command line tools and programms
will be installed: ack, autojump, tmux, libxml2, wget, git, svn, openssl, iterm2, sublime-text, google-chrome, skim, skitch, dashlane, dropbox, caffeine, thunderbird, python3, skype, zsh, mactex


## Replace shell

Instead of the familiar bash I make use of the even more awesome zsh shell. Type the following to replace bash with zsh as yur default shell and moreover install the great [ohmyzsh](https://github.com/robbyrussell/oh-my-zsh) stuff.
The **.zshrc** file is located in this dotfiles repository (see below). My theme must be copied to the **~/.oh-my-zsh/themes** folder

```
chsh -s $(which zsh)
curl -L http://install.ohmyz.sh | sh
```

## iTerm2

Replace terminal with the more fancy [iTerm2](http://iterm2.com/):
Activate the [solarized theme](https://github.com/altercation/solarized) for iTerm2.

## BetterSnapTool

In OS X you can enlarge or shrink a window very easy by dragging a corner or edge. Unfortunately it is not possible to drag a window to - for example - the right side of the screen and align it nicely to take half of the screen. This missing functionality is the main contribution of BetterSnapTool. Unfortunately it is not yet handled by brew. Thus you have to install it manually.

## Sublime Text 2/3

Sublime text is a minimalistic, lightning-fast, awesome editor which has broad
feature-palette like multi-cursor support, fuzzy search and other userful stuff.
It is even more powerful with all the nice packages, which extend functionality.
First thing to do with a fresh installation is to download and install
the PackageManager. Open the console and type the following (see
[official website](https://sublime.wbond.net/installation) for details):

```
import urllib.request,os,hashlib; h = '7183a2d3e96f11eeadd761d777e62404' + 'e330c659d4bb41d3bdf022e94cab3cd0'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)
```

Restart and get going! After that set up your of config, namely *Preferences.sublime-settings*
in the folder *~/Library/Application Support/Sublime Text 3/Packages/User*.
My config is located in my dotfiles git repository.

After that you surely want to install a load of packages, which make developement
in sublime text even more awesome.

* Package Control (see above)
* You definitely want the [spacegray minimalistic UI theme](http://kkga.github.io/spacegray/)
* Coloursublime package (easy switching between a load of nice color schemes)
* AdvancedNewFile (lets you type entire pathes which are created if not existent)
* BracketHighlighter
* Emmet (makes developmenet of HTML and CSS a pleasure by introducing a shortcut language)
* SidebarExhancements
* SublimeLinter (highlight lines with errors)
* Alignment (allows alignment of multiple lines via *ctrl+alt+a* by default)
* GitGutter-Edge (shows git diffs in gutter)
* SublimeGit (git integration in sublime text)
* LatexTools (Very nice LaTeX integration. See the [LatexTools github page](https://github.com/SublimeText/LaTeXTools) for an overview of existing commands)
* R-Box (some basic R helpers)
* [SearchInProject](https://github.com/leonid-shevtsov/SearchInProject_SublimeText/blob/master/README.md) (allow to search project-wide with ack, grep, ...)

## dotfiles

This repository contains an incomplete collection of my dotfiles which I currently
use on my OS X system. Simply clone this repository, make the bootstrap file
executable and run it. This will generate symbolic links to the dotfiles in the
repository to their corresponding locations in the file system.

```sh
git clone git@github.com:jakobbossek/dotfiles.git && cd dotfiles
chmod +x bootstrap
./bootstrap
```


