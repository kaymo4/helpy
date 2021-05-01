SELECT M.ccss_id AS CCSS,  M.ID AS ccss_db_id, cosmic_lesson_id AS LESSON_DB_ID, COUNT (M.ID) AS nb_of_parts
FROM
    ccss_maths AS M INNER JOIN cosmic_parts AS A ON M."id" = A.ccss_math_id
GROUP BY
    M.ID, cosmic_lesson_id