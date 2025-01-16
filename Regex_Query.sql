1.-----recipe_table----/*
SELECT * FROM RECIPE

2.-----Match Regular Expression (Case Sensitive)----/*
select distinct * from recipe 
where recipe_name ~ 'Curry';

3.-----Match Regular Expression (Case Insensitive) ----/*
select distinct * from recipe 
where recipe_name ~* 'Curry';

4.-----Does not Match Regular Expression (Case Sensitive)----/*
select distinct * from recipe 
where recipe_name !~* 'Curry';

5.-----Matches the beginning of the string----/*
select distinct * from recipe 
where recipe_name ~ '^C';

6.-----Matches the End of the String----/*
select distinct * from recipe 
where recipe_name ~ 'Fry$';

7.-----Matches the STARTING of the String----/*
select distinct * from recipe 
where recipe_name ~ '^[A-Z]';

8.-----Matches Numeric-type Data----/*
select distinct * from recipe 
where recipe_id ~ '[0-9]';

9.-----Matches Numeric-type Data----/*
select distinct * from recipe 
where user_feedback ~ '[0-9][0-9]';

10.-----Matches String-type Data----/*
select distinct * from recipe 
where recipe_name ~* 'P.*za';

11.-----MHere it select the third last should be (8 or 2)----/*
select distinct user_feedback from recipe 
where user_feedback ~* '^[a-z]{8} [0-9]{3}(8|2)$';
