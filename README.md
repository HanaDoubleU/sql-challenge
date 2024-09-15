# sql-challenge
ninth week's assignment

# For data modeling,
I made a tentative ERD. I'm calling it tentative because -- as I completed this assignment -- it went through several edits.

    The first edit was me changing the primary key from dept_no to emp_no in dept_manager since it did not occur to me that one department could have more than one manager. I realized my mistake after pgAdmin 4 would not accept dept_no as a primary key, and after consulting Xpert. Experiencing that hiccup made me take a moment to actually get to know the given data and really understand stand it before continuing with this challenge.

    The second edit was me adding a column (id serial primary key) to dept_manager since the third prompt for data analysis specifically asked for managers -- in addition to dept_no, dept_name, emp_no, last_name, and first_name -- to be listed.

    The third, and last, edit was me adding a column (id serial primary key) to employees for the same reason upon addressing the sixth and seventh prompts, which were asking for which employee in employees to be listed.

# For data engineering,
I used the same format for my schemata which we used in class to create the tables, and I imported the data through the provided csv.
    
    When I imported data for tables including the columns for id serial primary key, I was sure to remove that column from the tab called columns on pgAdmin before importing.
    
    While I completed data modelling, I was able to meaningfully familiarize myself with the data, so -- during the process for data engineering -- I was able to choose which columns were primary keys by simply reviewing how they influenced each table.

# For data analysis,
I was able to use (1) the knowledge which I acquired in class and (2) resources with documentation on aggregate functions to finish this assignment.
    They helped me figure out my approach to answering each prompt, for the most part. A lot of times, the activities in class acted as references and templates for me, too. More nitty-gritty information on my specific sources can be found in the comments of dataanalytics.sql.