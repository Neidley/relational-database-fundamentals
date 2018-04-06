/*
Subqueries within the FROM clause are called inline views.
Inline views allow you to query on the results table from another query.
*/

SELECT d.name, SUM(c.vacation_days)
  FROM department AS d,
  WHERE
