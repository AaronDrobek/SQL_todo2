-- //view all from table todos

SELECT * FROM todos;

-- //add to table

INSERT INTO todos (title, details, priority, createdat, completedat) VALUES ('take charlie for a walk', 'make sure you bring a bag', 7 , '2017-08-02 10:39:00', '2017-08-02 10:48:00');
INSERT INTO todos (title, details, priority, createdat, completedat) VALUES ('rake the leaves' , 'use brown lawn bags to collect leaves', 7 , '2017-06-15 09:22:00', NULL);
INSERT INTO todos (title, details, priority, createdat, completedat) VALUES ('treat the house for fleas', 'pay close attention to carpeted areas', 3 , '2017-07-12 11:10:00', '2017-07-14 12:35:00'), ('bring Christmas decorations down from attic', 'bring tree topper last', 5 , '2016-12-02 11:15:00' , '2016-12-23 10:46:00');
INSERT INTO todos (title, details, priority, createdat, completedat) VALUES ('do ten jumping jacks' , 'no cheating' , 3 , '2017-02-15 16:22:00', NULL);
INSERT INTO todos (title, details, priority, createdat, completedat) VALUES ('make 3 cups of coffee' , 'fresh ground' ,2 , '2017-07-24 09:14:00', '2017-06-10 11:33:00'), ('install new hardrive to Ds computer', 'do some research so you dont blow it up', 3 , '2017-08-29 15:45:00', NULL);
INSERT INTO todos (title, details, priority, createdat, completedat) VALUES ('add air to car tire', 'dont forget the valve cap', 6, '2016-11-20 18:12:00', '2016-11-22 20:15:00'), ('cut the grass', 'bag the trimmings', 2, '2017-04-12 09:15:00', '2017-04-13 10:25:00');
INSERT INTO todos (title, details, priority, createdat, completedat) VALUES ('go clothes shopping', 'keep within the budget', 2, '2017-07-12 11:35:00', '2017-08-02 11:38:00'), ('pick up dry cleaning', 'drop off dirty clothes to be dry cleaned', 8, '2016-03-12 08:15:00', NULL);
INSERT INTO todos (title, details, priority, createdat, completedat) VALUES ('study for class', 'go over past material', 1 , '2017-08-29 12:00:00' , NULL), ('take D out for a nice dinner' , 'any where she wants' , 1 , '2017-08-30 16:30:00', NULL), ('pick up olives and capers' , 'make sure the olives have pits' , 3, '2016-05-15 11:32:00', '2016-05-15 11:35:00');

-- //select all incompleted tasks with priority 3

 SELECT title, priority, completedat
 FROM todos
 WHERE priority = 3 AND completedat IS NULL;

-- //select all incomplete and list them in descending order of priority

SELECT title, priority, completedat
FROM todos
WHERE completedat IS NULL
ORDER BY priority DESC;

-- //select all tasks created in the last 30 days in order of priority

SELECT title, createdat, priority
FROM todos
WHERE CURRENT_DATE - INTERVAL '30' DAY < createdat
ORDER BY priority DESC;

-- // selects the highest priority items (I did my list where 1 is the highest priority), then selects the item created first
SELECT title, priority, createdat
FROM todos
WHERE priority = 1
ORDER BY createdat ASC
LIMIT 1;
