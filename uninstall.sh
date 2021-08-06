#!/usr/bin/env bash

version=0.0.1
app_name=tera
echo "Uninstalling $app_name..."

# check installation
install_path=$(command -v $app_name)

# awesome installation path $HOME/.local/share/bin
# brew installation path *brew*/bin
# Ubuntu installtion path /usr/bin

echo "Removing $app_name script..."

case "$install_path" in
*local/share*)
    # awesome
    awesome rm $app_name || {
        echo "Please remove $install_path."
    }
    ;;
*brew*)
    # brew
    brew uninstall $app_name || {
        echo "Please remove $install_path."
    }
    brew untap shinokada/$app_name
    ;;
*usr/bin*)
    # debian package
    sudo apt remove $app_name || {
        echo "Please remove $install_path."
    }
    ;;
*)
    # unknown
    echo "Not able to find your installation method."
    echo "Please uninstall $app_name script from $install_path."
    ;;
esac

echo "Uninstalltion completed."
