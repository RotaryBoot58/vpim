# vpim
Void Packages IMproved is a repository aiming to provide software that is not listed in the official repository and be more flexible.

# Branches
main: dev branch, where the packages templates are stored and all the developments is done.
templates: branch containing only the templates files in case you want to build it yourself.

## Setting up this repo
Create a file in `/etc/xbps.d` called `90-repository-vpim.conf` or something that you want and put the following line inside it:
```
repository=<REPOSITORY-LOCATION>
```
<REPOSITORY-LOCATION> can either be the absolute path or the URL

Then run ```xbps-install -S``` to sync all the repositories
