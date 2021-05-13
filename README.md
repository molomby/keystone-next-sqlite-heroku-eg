# Keystone Next: SQLite Example for Heroku

Keystone Next example project on SQLite.
You can deploy it to Heroku (for free!) using the button below, then navigate to the app to create an initial user and open the Keystone admin UI.

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/molomby/keystone-next-sqlite-heroku-eg)

You can also clone this repo and run it locally:

```sh
# Get the repo
git clone https://github.com/molomby/keystone-next-sqlite-heroku-eg
cd keystone-next-sqlite-heroku-eg

# Install packages
yarn

# Start the app
yarn dev
```

Then point your browser to [localhost:3000](http://localhost:3000).

## ⚠️ This is a Toy ⚠️

This app is an example/sandbox only.
Data _will not be persisted_ for more than a few hours due to the (intentional) limitations of SQLite on Heroku:

> SQLite runs in memory, and backs up its data store in files on disk.
> While this strategy works well for development, Heroku’s Cedar stack has an ephemeral filesystem.
> You can write to it, and you can read from it, but the contents will be cleared periodically.
> If you were to use SQLite on Heroku, you would lose your entire database at least once every 24 hours.
>
> Even if Heroku’s disks were persistent running SQLite would still not be a good fit.
> Since SQLite does not run as a service, each dyno would run a separate running copy.
> Each of these copies need their own disk backed store.
> This would mean that each dyno powering your app would have a different set of data since the disks are not synchronized.
>
> – [SQLite on Heroku](https://devcenter.heroku.com/articles/sqlite3)

However, this codebase _does_ form a starting point creating and deploying a basic Keystone app or just playing around.

## App Features

App code is a mix of the Keystone Next
[todo](https://github.com/keystonejs/keystone/tree/master/examples/todo) and
[auth](https://github.com/keystonejs/keystone/tree/master/examples/auth) example projects.
It demos a number of Keystone features, including:

- Some lists to play around with
- Password based authentication
- Stateless sessions
- Initial user creation workflow
- New Admin UI
- A generated GraphQL endpoint (`/api/graphql`), inc. GraphiQL (when `NODE_ENV !== 'production'`)
- Access control
- Automatic migrations (via. [Prisma Migrate](https://www.prisma.io/docs/concepts/components/prisma-migrate))

## KeystoneJS

Keystone is a powerful GraphQL based headless CMS.
Written in TypeScript, it has some terrific features out of the box, is easy to extend and a joy to use.

This app is build on an early preview build of Keystone Next.
We have some exciting plans for the project, with lots of features and docs rolling out over the next few months, as we move toward production readiness.
If you want to know more
checkout the (preview) [Keystone Next docs](https://next.keystonejs.com),
fork us on [GitHub](https://github.com/keystonejs/keystone)
or join the [KeystoneJS Slack](https://keystonejs.slack.com).
