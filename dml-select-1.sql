## Progression

select * from team;
-- 1. **Write a query to display the team details. Display the records sorted in the order of team name.**
select * from team 
order by name asc;

select * from player;
-- 2. **Write a query to display the player details whose name starts with a letter `S` and who do not belong to the country 'South Africa'. Display the records sorted in descending order based on player name.**
select * from player 
where name>5 and country!='japan'
order by country desc;
-- 3. **Write a query to display the event number and the seconds taken for each event. Display the records sorted in ascending order based on event number.**
select  event_no,clock_in_seconds
from event
order by event_no asc;

-- 4. **Write a query to display the event numbers of those events which has sum of raid points and defending points greater than or equal to 3. Display the records sorted in ascending order based on event_no.**
select event_no
from event
where (raid_points+defending_points)>3
order by event_no asc;
-- 5. **Write a query to display the name of all the players who belong to the country India or Iran. Display the records sorted in ascending order based on player name.**
select * from player;
select name
from player
where country IN ('india','iran')
order by name asc;
-- 6. **Write a query to display the name of all the players who does not belong to the country India and Iran. Display the records sorted in ascending order based on player name.**
select name
from player
where country not in('india','iran')
order by name asc;
-- 7. **Write a query to display the names of all the skills that start with `s`. Display the records sorted in ascending order based on skill name.**
select * from skill;
select name
from skill
where name like 's%'
order by name asc;

-- 8. **Write a query to display all the stadium names that ends with `stadium`. Display the records sorted in ascending order based on stadium names.**
select * from venue;
select stadium_name
from venue
where stadium_name like '%Stadium'
order by stadium_name asc;
-- 9. **Write a query to display the winner team ids and the scores of those teams whose scores are less than 35. Display the records sorted in descending order based on outcome id.**
SELECT * FROM outcome;

select winner_team_id,score
from outcome
where score<30
order by id asc;
-- 10. **Write a query to display the game details of those games that were played between January and March of 2020. Display the records sorted in descending order based on id.**
SELECT * FROM GAME;
select *from game
where game_date between T0_DATE('2020-JAN-01','DD-MM-YYYY') and TO_DATE('2020-MAR-30','DD-MM-YYYY');
-- 11. **Write a query to display the names of players who are Raiders. Display the records sorted in ascending order based on player name.**
select name
    from player
    where skill_id>1
    order by name;
-- 12. **Write a query to display the event number, raid points and defence points scored in the first innings of the game that was played on `2020-01-26`. Display the records sorted in ascending order based on event number.**
select *from event;
select *from game;
 select id
 from game
 where game_date = TO_DATE('01-JAN-2020','DD-MM-YYYY');
-- 13. **Write a query to display the name of the winner team in the game played on `2020-03-09`. Display the records sorted in ascending order based on team name.**
select winner_team_id
    from outcome,game,team
    where game_date = TO_DATE('09-MAR-2020','DD-MM-YYYY')
    order by name;
-- 14. **Write a query to display the names of players who were the player of the match in the game played on 2020-03-09'. Display the records sorted in ascending order based on player name.**
select name
    from game,player,outcome
    where game_date = TO_DATE('09-MAR-2020','DD-MM-YYYY')
    order by player_of_match;
    
-- 15. **Write a query to display the names of players who are All rounders. Display the records sorted in ascending order based on player name.**
SELECT * FROM PLAYER;
SELECT NAME,COUNTRY
FROM PLAYER
WHERE SKILL_ID IN (1,2)
order by name asc;
-- 16. **Write a query to display the venue names for all the games that were played on `2020-03-09`. Display the records sorted in ascending order based on venue name.**

-- 17. **Write a query to display the Coach's name of the team `Iran`**
select * from team
select coach
    from team,player
    where country ='Iran'
    
-- 18. **Write a query to display the event number and the defence points of `Fazel Atrachali` in each event. Display the records sorted in ascending order based on event number.**
elect events_no,defending_points
    from event,player
    where player.name ='Fazel Atrachali'
    Order by event.events_no;
-- 19. **Write a query to display the names of the Winning teams in the month of March 2020. Display the records sorted in ascending order based on team name.**
select * from game;
select id
    from game
    where game_date between TO_DATE('01-MAR-2022','DD-MM-YYYY')AND TO_DATE('31-MAR-2020','DD-MM-YYYY')
    
-- 20. **Write a query to display the names of players who were the player of the match in the games held in March 2020. Display the records sorted in ascending order based on player name.**
 SELECT name
    FROM player,outcome,game
    WHERE game_date BETWEEN TO_DATE('01-MAR-2020', 'DD-MM-YYYY') AND '31-MAR-2020'
    ORDER BY player.name;
   