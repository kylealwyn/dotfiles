##What is this
This is something I can consult when I receive a new mac, whether it be personal upgrade or for a new job.

##Xcode & Command Line Tools
[Xcode link](https://itunes.apple.com/us/app/xcode/id497799835?mt=12)

run ```xcode-select --install``` to install command line tools, with or without xcode downloaded

##Homebrew

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
Install: ``` brew install git ```

Config:
```
cd ~
curl -O https://raw.githubusercontent.com/kalwyn/config/master/.gitconfig
```

##Ruby
Install RVM: ```curl -L https://get.rvm.io | bash -s stable --ruby```

##Node

Install: ```brew install node```

Fresh update: ``` sudo npm install npm -g ```

##MongoDB
Install: ```brew install mongo```

Run: ```mongod```

Accesss: ```mongo```


##Rediss
Install: ```brew install redis```

Run: ```redis-server```

Access: ```redis-cli```


##Heroku
Install: ```brew install heroku-toolbelt```

Update: ```heroku update```

Login: ```heroku login```

##Browsers
[Chrome](www.google.com/chrome)

##Text Editor
[Sublime](http://www.sublimetext.com/3)

[Atom](https://atom.io/)

[Brackets](http://brackets.io/)

