# vim-relics

Manipulate development relics (think `console.log`, `debugger` statements, but
in your favorite language, instead of JavaScript) with simple commands.

Inspired by [this tweet](https://twitter.com/kevindente/status/385864692754681856) by [Kevin Dente](https://github.com/kevindente).

Currently available commands:

```
:NextRelic
:PreviousRelic
:DeleteRelics
:DeleteRelicLines
```

`NextRelic` and `PreviousRelic` are simple searches underneath, so you can use
them the same way (for example, delete until next relic: `d:NextRelic`).

## Contribute

Make a pull request and add relics in your language [here](https://github.com/mmozuras/vim-relics/blob/master/plugin/relics.vim#L13)!
