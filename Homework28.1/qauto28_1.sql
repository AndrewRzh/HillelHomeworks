use `hillel-qauto`;

/* Знайти власників у яких у імені є послідовність букв "am"; */
select * from users where email like "%am%"; 

/* Знайти найбільшу витрату серед усіх витрат Audi */
select max(totalCost), carId, cars.carBrandId
from expenses 
inner join cars 
on expenses.carId = cars.id 
where cars.carBrandId=1;

/* Знайти кількість моделей у брендів AUDI та BMW. Вивести стовпчики count_models (кількість моделей) та car_id (id бренду) */
select count(carBrandId) as count_models, car_brands.id as car_id, car_brands.title as Brand
from car_models
inner join car_brands on car_models.carBrandId = car_brands.id
group by car_brands.title having car_brands.title = "Audi" or car_brands.title = "BMW";

/* Знайти кількість власників за марками та моделями автомобілів. Вивести три стовпчики car_model, car_brand і user_count */
select carModelId as car_model, carBrandId as car_brand, count(userId) as user_count
from cars
group by carBrandId, carModelId;

/* Знайти імена юзерів, у яких є машини */
select name, lastName
from user_profiles
inner join cars on user_profiles.userId = cars.userId
where cars.carBrandId>0
order by user_profiles.name asc;