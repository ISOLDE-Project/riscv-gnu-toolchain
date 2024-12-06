# Remove entries from .gitmodules


# Remove submodule data
for submodule in $(git config --file .gitmodules --get-regexp path | awk '{ print $2 }'); do
    echo "deleting $submodule ..."
    git config --remove-section submodule.$submodule 2>/dev/null || true
    git rm --cached -r $submodule
    rm -rf $submodule 2>/dev/null || true
    rm -rf .git/modules/$submodule 2>/dev/null || true
done

rm -f .gitmodules
touch .gitmodules
# Commit changes
#git add .
#git commit -m "Remove all submodules"
