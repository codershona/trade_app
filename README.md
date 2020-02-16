## PROJECT : TRADE APP WITH IN_APP MESSAGING

#### READY TO DEPLOY IN HEROKU

### PROJECT CAN BE FOUND HERE:

#### BUILDED BY : FALGUNI ISLAM (SOFTWARE DEVELOPMENT)



* NOTES :

```
   - cd kickoff;
   - rails new trade_app -m template.rb ;
   - Add gems into gemfile ;
   - rails generate simple_form:install ;
   - rails g scaffold Trade title:string description:text user:references  ;
   - rails db:migrate;
   - rails active_storage:install ;
   - rails db:migrate;
   - Using Bulma Css;
   - rails g migration createConversations  ;
   - rails db:migrate ;
   - rails g migration createMessages ;
   - rails g model Conversation --skip-migration;
   - rails g model Message --skip-migration ;
   - 
```