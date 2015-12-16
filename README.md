# Module Loader

A very simple component to modularize .zshrc source files

## Use

1.  Clone the project into your home directory
```
git clone https://github.com/randywick/zshrc_module_loader.git ~/.module_loader/
```

2.  Add add or remove modules from `~/.module_loader`, as desired.

3.  Source and call the module loader.
```
echo ". ~/.module_loader/module_loader" >> ~/.zshrc
echo "load_modules ~/.module_loader" >> ~/.zshrc
```

## Dependencies

1.  `zsh`
2.  `Node.js`
3.  a Github access token (not a strict requirement, but it may nag about
    rate limiting)


## To do

### Installer Script
Rather than clone the repository, installation should be done with a simple
install script.  This script would do things like:
  * ensure module directory exists
  * make the necessary changes to ~/.zshrc to bootstrap module loading
  * prompt user for github access token
  * place `modload` into a PATH-addressable location
  * allow for simple programmatic teardown

### Meta Information In Modules
In addition to a self-identifying hint, modules should contain some basic
information about themselves: description, dependencies, etc.  This could be
presented to the user via a `modload info` command.

### More Information In List
`modload ls` should contain more information, including, possibly:
  * module category
  * local install status
  * size
  * llamas

### Easier Updates
Either `modload` or the sourced `load_modules()` function should periodically
test for module updates and updates to `modload` and `load_modules()`.