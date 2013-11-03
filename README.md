# vim-relics

Manipulate development relics (think 'console.log', 'debugger' statements in
your favorite language) with simple commands. Currently available commands:

```
:NextRelic
:PreviousRelic
:DeleteRelics
:DeleteRelicLines
```

`NextRelic` and `PreviousRelic` are simple searches underneath, so you can use
them the same way (delete until next relic: `d:NextRelic`).

## Contribute

Make a pull request and add relics in your language [here](https://github.com/mmozuras/vim-relics/blob/master/plugin/relics.vim#L13)!
