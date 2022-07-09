## jasper-cli

This repo is intended to be used with conjunction with the commandbox-jasper module, a static site generator for ColdFusion.

Getting started is easy:

``` sh
box install commandbox-jasper
```

Once installed you can use the `jasper` command to scaffold your project.

``` sh
mkdir my-new-project
cd my-new-project
box jasper init
box jasper build
box server start
box jasper watch
```

#### box jasper init 
This will download the most current build of jasper-cli 

#### box jasper build
This will write the static html of the site to the `_site` folder

#### box server start
Included in jasper-cli is a commandbox configuration that will serve the static content of the site. You can fine tune your settings by editing `server.json.`

#### box jasper watch
Watches all markdown and coldfusion files in the project directory and will regenerate the static html when it detects a change.


