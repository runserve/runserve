# Using guide

## Update To update app run: 
First make sure, your runserve app is up to date, run:
> runserve update 
> runserve upgrade 

## Configure 

### Global config 
To run correctly git need some global variables. In this step, you also set a default runserve environment. This config will be saved in your `home/~.runserve` directory 
> runserve config 

### Local config 
You can also set local config for each project. This config will be stored in your `project/.runserve` folder. To set this config go to your project folder and run:
> runserve init

## How to use?
Runserve container has a few preinstalled apps, for example if you want to clone  git repository you can simple run:
> runserve git clone https://github.com/youraccount/project.git

Chown files to your local account, eg:
> sudo chown -R account:account projectfolder/

Go to the project folder
> cd projectfolder/

Install project dependences:
> runserve npm install

or
> runserve yarn install

### Start angular project:
> runserve ng serve --host=0.0.0.0

**Important:** `--host=0.0.0.0` is needed to expand app outside container. You can specify address 0.0.0.0 in your `angular.json` file :
```
    "serve": {
      "builder": "@angular-devkit/build-angular:dev-server",
      "options": {
        "browserTarget": "project:build",
        "host": "0.0.0.0"
      },
```

## Using bash inside runserve container
Everything what you type after `runserve` word, will be running inside runserve container
eg: `runserve npm -v` run `npm -v` inside runserve container.
You can also run:
>runserve bash

Now you are inside runserve container and `/app` folder is outside folder where you run `runserve bash` command. 
