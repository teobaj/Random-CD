cd() {
    local dirs=($(ls -d */ 2>/dev/null))
    
    if [ ${#dirs[@]} -eq 0 ]; then
        echo "No directories found"
        return 1
    fi
    
    local random_dir=${dirs[$RANDOM % ${#dirs[@]}]}
    builtin cd "$random_dir"
}