-- Step 1: Find the forum post from April 2048 mentioning EmptyStack and dad
SELECT * FROM forum_posts
WHERE date >= '2048-04-01' AND date < '2048-05-01'
AND (content ILIKE '%emptystack%' AND content ILIKE '%dad%');
-- Found post by author: smart-money-44

-- 2: Get the last name of the author from forum_accounts
SELECT last_name FROM forum_accounts WHERE username = 'smart-money-44';
-- Last name is: Steele

-- 3: Find all forum accounts with the last name Steele
SELECT * FROM forum_accounts WHERE last_name = 'Steele';
-- Found: sharp-engine-57 (Andrew), stinky-tofu-98 (Kevin), smart-money-44 (Brad)

-- 4: Find all EmptyStack employee accounts with the last name Steele
SELECT * FROM emptystack_accounts WHERE last_name = 'Steele';
-- Found: triple-cart-38 (Andrew), lance-main-11 (Lance)

-- 5: Use Andrew Steele's credentials to access mainframe
-- Username: triple-cart-38, Password: password456

-- 6: After running node mainframe, load emptystack.sql and find the taxi project message
SELECT * FROM emptystack_messages WHERE body ILIKE '%taxi%';
-- Found message from: your-boss-99, subject: Project TAXI

-- 7: Get the admin credentials
SELECT * FROM emptystack_accounts WHERE username = 'your-boss-99';
-- Username: your-boss-99, Password: notagaincarter

-- 8: Get the project ID for the taxi project
SELECT * FROM emptystack_projects WHERE code ILIKE '%taxi%';
-- Project ID: DczE0v2b

-- 9: Use node mainframe -stop with the above credentials and project ID to shut down the project