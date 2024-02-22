# Heroku

My heroku application: https://rottenpotatoes-yt-302dbde26aac.herokuapp.com/

## solution
I implemented my ascending sorting and descending sorting in my controller and helper.
* use ```@movies = Movie.order("#{params[:sort]} #{params[:direction]}")``` to sort data with the params given
* use ```sort_link()``` method in helper to create link and decide sorting in descending or ascending order.
  
To record the sorting order and params
* use ```session[:sort]``` and ```session[:direction]``` to store the data



