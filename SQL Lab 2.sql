use sakila; 

# 1.  Actors with the first name "Scarlett"
select * from actor; 
select * from actor where first_name like  "%Scarlett%"; 

# 2. Select all the actors with the last name ‘Johansson’.
select * from actor;
select * from actor where last_name like "%Johansson%"; 

# 3. How many films (movies) are available for rent?
select * from film; 
select count(film_id) from film; 


# 4. How many films have been rented?
select * from rental; 
select count(rental_id) from rental; #16,044 movies have been rented

# 5. What is the shortest and longest rental period?
select * from film; 
select title, rental_duration 
from film; #I'll use min and max to check for shortest and longest
select rental_duration from film; 
select min(rental_duration), max(rental_duration) from film;  # The shortest rental duration is 3 days and the longest is 7 days

# 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select * from film; 
#Longest and shortest movie duration
select min(length) as min_duration, max(length) as max_duration from film; 

#The longest movie duration is 46 minutes and the longest is 185 minutes.

# 7. What's the average movie duration?
select * from film;
select length from film; 
select avg(length) from film; #The average movie duration is 115.27 minutes

# 8. What's the average movie duration expressed in format (hours, minutes)?
select convert(avg(length)) from film;

# 9. How many movies longer than 3 hours?
select * from film;
select length from film; #since 3 hours is 180 minutes I'll check for films with length longer than 180 minutes
select count(film_id) from film where length > 180; #39 movies are longer than 3 hours

# 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select * from customer; 
select lower(email), upper(left(first_name)) from customer;


# 11. What's the length of the longest film title?
select title, max(character_length(title)) from film;
  #The longest film title has 16 characters 





