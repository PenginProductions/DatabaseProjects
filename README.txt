This PHP project uses both an Apache PHP and MySQL servers. I used XAMPP to run both.
_____________________________________________________________________________________________________________________________
Included in this project are 2 SQL files:
	
	File 1 -> ListBuilder-Rgiglio-FreshDataExport.sql

		-This file is an export of my project's listBuilderDB.
		-The export sets up database to contain a picture in the images table.
		-Without at least one picture loaded, no users may be registered to the site.

	File 2 -> ListBuilder-Rgiglio-Script.sql

		-This file is the script that originally created my project's listBuilderDB.
_____________________________________________________________________________________________________________________________
To Run:

1) From MySql Workbench, import data from ListBuilder-Rgiglio-FreshDataExport.sql
	-This sql file will create the schema.

2) Run the application from "ListBuilder-Rgiglio-Project/login.php"

_____________________________________________________________________________________________________________________________
Tips:

To rename a list:
	1) Click the 'Edit' button in the List table for the list you would like to rename.
	2) In the 'Edit List' table, change the list name.
	*When changing the list name, a new entry must be created or an error will populate.
	3) Give the new entry details and click the Submit button. The top of the page will notify you
	      that the list name has been updated.
	4) Delete the newly added entry if it is not needed in your list.

When creating a new list entry the cost must be < or > 0. (0 will produce an error when submitted.)

Uploading an Avatar picture/gif adds the picture to a central storage location for all users.