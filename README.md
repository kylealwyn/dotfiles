##What is this
This is something I can consult when I receive a new mac, whether it be personal upgrade or for a new job.

##Steps
###Install Xcode and Command Line Tools
[Xcode link](https://itunes.apple.com/us/app/xcode/id497799835?mt=12)

run ```xcode-select --install``` to install command line tools, with or without xcode downloaded

**1. Install Homebrew**

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Tell OS to use homebrew packages
```
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
```

and finally run
```
brew doctor
```

**2. Install Node**

[Node homepage](https://nodejs.org/en/)
then update npm

```
sudo npm install npm -g
```

**3. Install Editor of Choice**

[Sublime](http://www.sublimetext.com/3)

[Atom](https://atom.io/)

[Brackets](http://brackets.io/)

