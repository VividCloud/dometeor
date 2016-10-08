DoMeteor by VividCloud.
========

Another Meteor Docker Deployment. (Need DaoCloud build environment)

## Usage

Use this one-liner in your Meteor application folder:

    curl http://d.vvd.space/scripts/install_dometeor.sh | sh

After install, when updating existing DoMeteor installation:

    ./dometeor update
  
(Windows users, if you have bash then it works, or you should parse the script by your mind! Feel free to fire a PR with Windows script in it!)

And then build your project on DaoCloud. You may need to switch the `构建流程` manually to `daocloud.yml`.

If you have already installed DoMeteor by copying files, don't worry and just run the first command. It will fail but you can use `./dometeor` then.

## Todo

* [ ] Faster build times (This won't be checked in fact!).

## License

MIT. Made by [VividCloud](http://vvd.space).
