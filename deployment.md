##### Heroku Deployment
1. git init
2. git add .
3. git commit -m 'pure rack app'
4. heroku create
5. heroku buildpacks:set https://github.com/bundler/heroku-buildpack-bundler2
6. git push heroku master
7. heroku run rails db:migrate

`git config --list`

##### Essential Heroku Commands
`heroku run rails db:migrate`
`heroku run console`
`heroku logs -t`
`heroku restart` 

##### Running Rails Server
`rackup -p 9000`

`shotgun --port=6000 config.ru`
