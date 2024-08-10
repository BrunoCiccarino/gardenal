function! ThemeSwitcher(themes, index)
    let themes = a:themes

    " Check if the index is valid
    if a:index < 1 || a:index > len(themes)
        echo "Invalid index. Choose a number between 1 and" . len(themes)
        return
    endif

    
    let theme = themes[a:index - 1]

    " Check if the theme is installed
    if empty(globpath(&runtimepath, 'colors/' . theme . '.vim'))
        echo "Theme " . theme . " not found. Please install it."
        return
    endif

    " Apply the theme
    execute 'colorscheme ' . theme
    echo "Theme " . theme . " applied."
endfunction

function! MapThemeSwitcherKeys(themes)
    for i in range(1, len(a:themes))
        " Map keys to switch between themes
        execute 'nnoremap <silent> <Leader>t' . i . ' :call ThemeSwitcher(' . string(a:themes) . ', ' . i .')<CR>'  
        endfor
endfunction
