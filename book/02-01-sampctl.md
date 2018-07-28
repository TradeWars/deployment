# sampctl

This workflow becomes a whole lot simpler when [sampctl][0] is involved. This
allows your entire gamemode to be _described_ and _managed_ with two simple
files: the `sampctl` binary (`sampctl.exe` on Windows) and a [Package Definition
File][1] `pawn.json`.

If you're not familiar, sampctl will allow you to get dependencies, build the
code and run the server all without any manual work or explicit download of
files. This is absolutely essential for an automated deployment solution.

If you've not used sampctl, follow [this guide][2] to migrate your gamemode
setup to sampctl.

Once your repository has a `pawn.json` file in it, come back here and continue.

[0]: http://bit.ly/sampctl
[1]: https://github.com/Southclaws/sampctl/wiki/Package-Definition-Reference
[2]: http://forum.sa-mp.com/showthread.php?t=651548
