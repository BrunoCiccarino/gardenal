function! ThemeSwitcher(themes, index)
    let themes = a:themes

    if a:index < 1 || a:index > len(themes)
        echo "Invalid index. Choose a number between 1 and " . len(themes)
        return
    endif

    let theme = themes[a:index - 1]

    if empty(globpath(&runtimepath, 'colors/' . theme . '.vim'))
        echo "Theme " . theme . " not found. Please install it."
        return
    endif

    execute 'colorscheme ' . theme
    echo "Theme " . theme . " applied."
endfunction

function! MapThemeSwitcherKeys(themes)
    for i in range(1, len(a:themes))
        let key = '<Leader>t' . i
        execute 'nnoremap <silent> ' . key . ' :call ThemeSwitcher(' . string(a:themes) . ', ' . i . ')<CR>'
    endfor
endfunction
