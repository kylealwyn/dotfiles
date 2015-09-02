##What is this
This is something I can consult when I receive a new mac, whether it be personal upgrade or for a new job.

##Xcode and Command Line Tools
[Xcode link](https://itunes.apple.com/us/app/xcode/id497799835?mt=12)

run ```xcode-select --install``` to install command line tools, with or without xcode downloaded

##Install Homebrew

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Tell OS to use homebrew packages
```
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
```

and finally run
```brew doctor```

##Git
```brew install get```

Install your config:
```
cd ~
curl -O https://raw.githubusercontent.com/kalwyn/config/master/.gitconfig
```
##Node

Install: ```brew install node```

Update:``` sudo npm install npm -g ```

##Editor of Choice

[Sublime](http://www.sublimetext.com/3)

[Atom](https://atom.io/)

[Brackets](http://brackets.io/)

