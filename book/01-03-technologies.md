# Technologies

This guide generally defines three categories for each task:

- Testing
- Building
- Deployment

Each of these use a different piece of technology and each phase communicates
with the others to facilitate automation.

When you finish writing code and `git commit`, [GitHub][0] or [GitLab][1] will
acknowledge the changes and notify either [Travis CI][2] or [GitLab CI/CD][3]
which are the "CI Services". Once one of these CI services knows about the new
commit, it will build the source code into an `.amx` and, if you set it up, will
run unit tests to ensure everything works as expected.

If the build/test goes well, depending on the branch you committed to, the CI
Service will then build a [Docker Image][4] that contains [sampctl][5] and the
`.amx` file along with any other required files and publish it to a [container
registry][6]

Finally, an application called [Watchtower][7] periodically checks the registry
for new versions of the containers it is watching. If it finds a new version of
the Docker image, it will pull that image and restart the application
automatically.

And that's the cycle. All without needing any intervention from the developer.
All they have to do is write their code and `git push`.

[0]: https://github.com
[1]: https://gitlab.com
[2]: https://travis-ci.org
[3]: https://about.gitlab.com/features/gitlab-ci-cd
[4]: https://docs.docker.com/glossary/?term=image
[5]: http://bit.ly/sampctl
[6]: https://docs.docker.com/glossary/?term=registry
[7]: https://github.com/v2tec/watchtower
