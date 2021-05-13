# KeystoneJS 6 SQLite Example to Heroku

KeystoneJS 6 example project on SQLite with "Deploy to Heroku" button.

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/molomby/ks6-eg-sqlite-heroku)

Taken almost entirely from the [`next-lite` example project](https://github.com/keystonejs/keystone/tree/master/examples/next-lite).

⚠️ **This is a demo** ⚠️

Data _will not be persisted_ for more than a few hours.
Heroku specifically warn against using SQLite in this way:

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

However, this codebase _does_ form a starting point creating and deploying a basic Keystone app.
