## Appendix: Git without fear

### Commit ids, garbage collection, the stash and the reflog

Git is eventually fun and easy but a little scary before that, because you
rightfully worry about losing data.

Here's the panic point - you just commited a week's worth of code and then you
did something complicated and now you don't see the code you just wrote.

Relax and remember this: _once you have created a commit, it's almost
impossible to lose it._ And remember the flip side - _if you haven't committed
your changes, they can be gone in an instant._



I'm going to jump ahead to two intermediate topics, `git stash` and `git
reflog`, because they can offer you great peace of mind and allow you to
experiment with other commands.
