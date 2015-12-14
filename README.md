# Module Loader

A very simple component to modularize .zshrc source files

### Use

1.  Clone the project into your home directory
```
git clone https://github.com/randywick/zshrc_module_loader.git ~/.module_loader/
```

2.  Add add or remove modules from `~/.module_loader/modules`, as desired.

3.  Source and call the module loader.
```
echo ". ~/.module_loader/module_loader" >> ~/.zshrc
echo "load_modules ~/.module_loader/modules" >> ~/.zshrc
```