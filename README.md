## PROJECT : TRADE APP WITH IN_APP USING MESSAGING

#### READY TO DEPLOY IN HEROKU

## Project Can be found in here :
 **[Live version](https://quiet-bayou-93095.herokuapp.com/)**

<p align="center">
	
<img src="https://user-images.githubusercontent.com/57604500/121789822-98648b80-cbd9-11eb-9ffe-c30d88415759.png" width=996>
<br />
<h3 align="center">TRADE APP WITH IN_APP USING MESSAGING</h3>
</p>


### Trading App with In-App Messaging (RESPONSIVE Rails web app)



* Project Commands :

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
   - viva@example.com (admin)
```
