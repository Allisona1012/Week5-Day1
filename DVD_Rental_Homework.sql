-- Question 1 
-- How many actors are there with the name 'Wahlberg'?

select * 
from actor
where last_name = 'Wahlberg';

-- ANSWER: Two 

-- Question 2 
--How many payments were made between $3.99 and $5.99?


select Count(*)
from payment 
where amount > 3.99 and amount < 5.99;

-- ANSWER: 3,409

-- Question 3
-- What film does the store have the most of? (search in inventory)

select Count(store_id)
from inventory 
group by store_id;

--ANSWER: id : 2 at 2,311


-- Question 4
-- How many customers have the last name 'William'?
select Count(last_name)
from customer 
where last_name = 'William';

--ANSWER: 0


-- Question 5
--What store employee (get id) sold the most rentals?

select count(staff_id)
from rental
group by staff_id;

-- ANSWER: Staff_id: 1 sold 8,040


-- Question 6
--How many different district names are there?
select count(district),district
from address
group by district
order by count(district) desc ;

-- ANSWER: Buenos Aires at 10




-- Question 7
-- What film has the most actors in it? (use film_actor and get film_id)
select film_id, count(actor_id)
from film_actor
group by film_id 
order by count(actor_id) desc;

--ANSWER: film_id : 508 with 15 actors


-- Question 8
-- From store_id 1, how many customers have a last name ending with 'es'? (use customer table)
select store_id , last_name
from customer
where last_name like '%es'
order by store_id;


-- ANSWER : 13

-- Question 9
-- How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
select customer_id , amount
from payment
where customer_id > 380 and customer_id < 430 
order by amount ;


-- Question 10
-- Within the film table, how many rating categories are there? And what rating has the most
-- movies total?

select rating, count(rating)
from film
group by rating 
order  by count(rating);

-- ANSWER: 5 ratings  pg-13 has the most 