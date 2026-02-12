

## adding column

example
- rails g migration add_user_id_to_links user_id:integer:index

- rails will infer that you want to add something to the links table. it will infer you want to add a
column called user_id.
- user_id:integer:index: the user_id column will be of type integer and that this column is an index.
- an index allows for rapid random lookups and improves search efficiency.

Now with associations we can access commands such as user.links to get all the links associated with a particular user.

- whenever making changes to a model, use rake db:migrate to update the database.


## links and routes

- to see the routes and methods use ```rails routes``` command 
- <%= link_to "string", rails route path %>

## devise
with devise we get all these built in features for user authentication and authorization
- sign in/out , log in/out, sessions
- user_signed_in - application.html.erb
- ```current_user```, this method returns the model class associated with the signed_in user. Otherwise it will return nil
- build is a alias for new

## before filter in controllers

- before_action :authenticate_user!, except: [:index, :show]
    - only allow non-users to view all and individual links

- this method will run before any other controller actions in the links_controller


## acts_as_votable gem
- allows user to perform actions such as upvote/downvote for any model. 
- any model can vote and be voted on.

```
@link.liked_by @user1
@link.unliked_by @user1

@link.disliked_by @user1
@link.undisliked_by @user1

@link.votes_for.size

```

## Voter and Votable
- which model will be votable and which model will be casting votes
- User: will be the voter
- Link: will be voted on




