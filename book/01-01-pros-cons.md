# Pros and Cons

Every approach has upsides and downsides, solutions for problems are rarely
alone and there are many ways to solve this particular problem.

## Benefits

What you get out of setting this up is:

- Your script will automatically be built whenever you push to Git
- If you push to the `master` branch, your live server will be updated
- You can move to another server _very_ easily
- You never need to give contributors SSH access to your server machine

In addition to this, if you implement everything in this document, you also open
up more opportunities for integrating with other workflows:

- SSH-less and RCON-less server management
- Status monitoring
- Log Management and alerting

## Downsides

This architecture is not a silver bullet. It's not a sure-fire replacement for
your existing deployment strategy and I'm not touting this as the one and only
method.

If you run a small server that doesn't make revenue and you don't have other
developers work on your codebase, you probably don't need this extra
complication.
