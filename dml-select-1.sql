## Progression


-- 1. **Write a query to display the team details. Display the records sorted in the order of team name.**
SELECT name from team
order by name;
-- 2. **Write a query to display the player details whose name starts with a letter `S` and who do not belong to the country 'South Africa'. Display the records sorted in descending order based on player name.**
select name from player
where name like 's%' and country != 'South Africa'
order by name desc;
-- 3. **Write a query to display the event number and the seconds taken for each event. Display the records sorted in ascending order based on event number.**
select event_no, clock_in_seconds from event
order by event_no asc;
-- 4. **Write a query to display the event numbers of those events which has sum of raid points and defending points greater than or equal to 3. Display the records sorted in ascending order based on event_no.**
select event_no from event
where raid_points + defending_points >= 3
order by event_no asc;
-- 5. **Write a query to display the name of all the players who belong to the country India or Iran. Display the records sorted in ascending order based on player name.**
select name from player
where country='India'or country='Iran'
order by player.name asc;

-- 6. **Write a query to display the name of all the players who does not belong to the country India and Iran. Display the records sorted in ascending order based on player name.**
select name from player
where country !='India' and country !='Iran'
order by player.name asc;

-- 7. **Write a query to display the names of all the skills that start with `Defend`. Display the records sorted in ascending order based on skill name.**
select name from skill
where name like 'Defend%'
order by skill.name asc
-- 8. **Write a query to display all the stadium names that ends with `Complex`. Display the records sorted in ascending order based on stadium names.**
select stadium_name from venue
where stadium_name like '%Complex'
order by venue.stadium_name asc;
-- 9. **Write a query to display the winner team ids and the scores of those teams whose scores are less than 35. Display the records sorted in descending order based on outcome id.**
select winner_team_id , score from outcome
where score < 35 
order by outcome.id desc;
-- 10. **Write a query to display the game details of those games that were played between January and March of 2020. Display the records sorted in descending order based on id.**
select game_date from game
where game_date between TO_DATE('01-JAN-2020','DD-MM-YYYY') and '31-MAR-2020'
order by game.id desc;
-- 11. **Write a query to display the names of players who are Raiders. Display the records sorted in ascending order based on player name.**
select name from player
where skill_id < 1
order by player.name asc;
-- 12. **Write a query to display the event number, raid points and defence points scored in the first innings of the game that was played on `2020-01-26`. Display the records sorted in ascending order based on event number.**
select events_no,raider_points,defending_points
from event,game
where innings_id = 1 and game_date = TO_DATE('26-JAN_2020','DD-MM-YYYY')
order by events_no;
-- 13. **Write a query to display the name of the winner team in the game played on `2020-03-09`. Display the records sorted in ascending order based on team name.**
select winner_team_id
from outcome,game,team
where game_date = TO_DATE('09-MAR-2020','DD-MM-YYYY')
order by name;
-- 14. **Write a query to display the names of players who were the player of the match in the game played on 2020-03-09'. Display the records sorted in ascending order based on player name.**
select name from game,player,outcome
where game_date = TO_DATE('09-MAR-2020','DD-MM-YYYY')
order by player_of_match;
-- 15. **Write a query to display the names of players who are All rounders. Display the records sorted in ascending order based on player name.**
select name from player
where skill_id=3
order by name;
-- 16. **Write a query to display the venue names for all the games that were played on `2020-03-09`. Display the records sorted in ascending order based on venue name.**
select stadium_name from team, player,game
where country = 'Iran'
order by team.name;
-- 17. **Write a query to display the Coach's name of the team `Iran`**
select team.coach from team, player
where player.country='Iran';
-- 18. **Write a query to display the event number and the defence points of `Fazel Atrachali` in each event. Display the records sorted in ascending order based on event number.**
select event_no , defending_points from event, player
where player.name ='Fazel Atrachali'
order by event_no asc;

-- 19. **Write a query to display the names of the Winning teams in the month of March 2020. Display the records sorted in ascending order based on team name.**
select team.name from outcome, team,game
where game_date between to_date('01-MAR-2020','DD-MM-YYYY') and '31-MAR-2020'
order by team.name asc;
-- 20. **Write a query to display the names of players who were the player of the match in the games held in March 2020. Display the records sorted in ascending order based on player name.**
select name from player, outcome, game
where game_date between TO_DATE('01-MAR-2020','DD-MM-YYYY') AND '31-MAR-2020'
order by player.name asc;