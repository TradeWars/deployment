# Branches

Branches are essential for most projects that grow in size over a number of
years. This guide recommends the use of [Git flow][0] but you can choose another
solution if you want.

Essentially, the Git flow workflow involves two main branches: `master` and
`develop`. The idea is that `master` is always stable and working, it's the
version you run publicly for players to enjoy. Then you have the `develop` (or
often named `dev`) branch which represents an unstable testing environment with
new features.

You can do feature branches if you want or push everything to `develop` - that's
completely up to you, read the Git flow article linked above to learn more about
the full process and decide which parts you want to implement.

## `staging`

You may opt to use a "staging" branch which is essentially another level between
`develop` and `master`. This represents a slightly more stable version of the
software that will be the next master - assuming it's stable. This is useful for
large projects that don't want to risk releasing broken versions. Essentially,
the staging branch acts as a buffer zone to store the _next_ stable version.
This also provides the opportunity to periodically publicly host this branch
some time before merging it to master to allow users to test the new features
before they go live. This lets you keep the `develop` version hosted privately
and only accessible to designated testers.

How you structure your branches is entirely up to you, as long as you have a
`master` branch that represents the latest stable version, the rest is up to
you.

[0]: https://nvie.com/posts/a-successful-git-branching-model/
