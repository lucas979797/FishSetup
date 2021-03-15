function mkjavafxbase
    if test (count $argv) -eq 1
        echo "Creating Java FX Base Project $argv...."
        mkdir $argv
        cd $argv
        cp -r /Users/ted/.config/fish/defaultFiles/Java/fxProject/. .
        code .
    else
        echo "Please provide a name for the JavaFX project"
    end
end