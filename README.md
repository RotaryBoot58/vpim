# vpim
Void Packages IMproved is a repository aiming to provide software that is not listed in the official repository and be more flexible.

# Branches
main: dev branch, where the packages templates are stored and all the developments is done.
templates: branch containing only the templates files in case you want to build it yourself.

## Setting up this repo
Create a file in `/etc/xbps.d` called `99-repository-vpim.conf`. you can change the two numbers at the beggining or change the name completely, just make sure to make it end with `.conf` and having the following line on it:
```repository=https://rotaryboot58.github.io/vpim```
Then run ```xbps-install -S``` to sync all the repositories

Alternatively you can download the file in the repository

# Building packages manually
Install the binary-bootstrap ```./xbps-src binary-bootstrap```
Build it with ```./xbps-src pkg $package_name```

# Annotations for me :)
Install ```xtools```

New Package: ```xnew $package_name```  
Updating checksum: ```xgensum -i $package_name```  
Checking for linting: ```xlint $packane_template_file```  
Signing repo: xbps-rindex --sign --signedby "$signature" --privkey $ssh_key hostdir/binpkgs/main  
Signing packages: xbps-rindex --sign-pkg --privkey $ssh_key hostdir/binpkgs/main/*.xbps

Add package first with xbps-rindex -a and then sign it
