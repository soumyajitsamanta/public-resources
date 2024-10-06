echo "Want to install git alias? (y/N):"
read is_Git_AlreadyDone
if [ $is_Git_AlreadyDone = 'y' ];
then 
    echo "Installing Alias s=status, g=log graph"
    git config --global alias.s status
    git config --global alias.g "log --graph --all --oneline --date=iso"
fi

echo ""
echo "Installing the required Project folders:"
if ! [ -d ~/Project ];
then
    mkdir ~/Project
    mkdir -p ~/Project/bin
    mkdir -p ~/Project/Checkout
    mkdir -p ~/Project/DatabaseFiles
    mkdir -p ~/Project/Documents
    mkdir -p ~/Project/Setups
    mkdir -p ~/Project/workspaces
    echo "- Done ~/Project"
fi


if ! [ -d ~/Installed ] ;
then
    mkdir ~/Installed ;
    echo "- Done ~/Installed"
fi

echo ""

# Add to bashrc or print line to add to bashrc
echo "Add to ~/.bashrc the following lines:"
echo ""
echo "# MyBashrc Section Start"
echo "alias cls=\"clear\""
echo "export PATH=\$PATH:~/Project/bin"
echo "# MyBashrc Section End"
echo ""
echo "Some essential tools to have"
echo " - Java JDK"
echo " - Maven"
echo " - Sqlite or DuckDb"
echo " - NodeJs"
echo " - VSCodium"
echo " - LaTeX if journal formatted documents needed"
echo " - SDL Library"
echo " - Compilers and their collections e.g. GCC,TCC"
echo " - LibreOffice"
