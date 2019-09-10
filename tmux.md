Anotações baseadas na talk: https://www.youtube.com/watch?v=LzXaMBQOs4w


--------------------------------------------------------------------------------
```
+----------------------------------------------------------------------+
| TREMINAL                                                             |
|                                                                      |
|  +---------------------------------------------------------------+   |
|  | SESSION                                                       |   |
|  |                                                               |   |
|  |  +--------------------------+   +--------------------------+  |   |
|  |  |  WINDOW                  |   |  WINDOW                  |  |   |
|  |  |                          |   |                          |  |   |
|  |  |   +-------+  +-------+   |   |   +-------+  +-------+   |  |   |
|  |  |   | PANEL |  | PANEL |   |   |   | PANEL |  | PANEL |   |  |   |
|  |  |   |       |  |       |   |   |   |       |  |       |   |  |   |
|  |  |   +-------+  +-------+   |   |   +-------+  +-------+   |  |   |
|  |  |                          |   |                          |  |   |
|  |  |   +-------+  +-------+   |   |   +-------+  +-------+   |  |   |
|  |  |   | PANEL |  | PANEL |   |   |   | PANEL |  | PANEL |   |  |   |
|  |  |   |       |  |       |   |   |   |       |  |       |   |  |   |
|  |  |   +-------+  +-------+   |   |   +-------+  +-------+   |  |   |
|  |  |                          |   |                          |  |   |
|  |  +--------------------------+   +--------------------------+  |   |
|  +---------------------------------------------------------------+   |
+----------------------------------------------------------------------+
```

* Windows are tabs in tmux

command line:
 - `tmux` start tmux
 - `tmux new-session -s foo`  start new session with name foo
 - `tmux detach` detach shell from tmux session
 - `tmux attach -t foo` attach form session name foo
 - `tmux ls` list sessions

preflix:
 - `CTRL-b` default prefix

session:
 - `prefix $`	remane session

windows:
 - `prefix c`	create a new window
 - `prefix ,` remane current window
 - `prefix p` navigate to previous window
 - `prefix n` navigate to next window
 - `prefix &` kill current window


panels:
 - `prefix %` split vertical
 - `prefix "` split horizontal
 - `prefix x` delete panel
 - `prefix q` show index

config
 - `.tmux.conf` file to config tmux
