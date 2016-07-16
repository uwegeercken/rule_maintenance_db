rule_maintenance_db
===================
MySQL (or MariaDB) database for the rule maintenance web application. contains the required tables and basic data for
the rule_maintenance web app to work.

- create the database in your MySQL or MariaDB server

To do so, login to your database server and create the database. The default name of the database would be "ruleengine_rules" but you can also use any other name. In the web application for the maintenance of the rulegroups, rules and actions you will be able to specify the database name.

- import the sql file to the database server

Example: 
mysql -u root -p <databasename> < ruleengine_rules.sql

Note: replace <databasename> with the actual name of the database that you created before.

The command above will create the required tables and default data required by the web application.

The rule maintenance application uses the table "user" for authentication. the initially only configured user is: admin and the password is also: admin. use this user to login to the web application. you can change the password through the web interface.


   Copyright (C) 2008-2016  Uwe Geercken
    
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
    
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
    
    You should have received a copy of the GNU General Public License
    along with this program.  If not, see http://www.gnu.org/licenses


uwe geercken - uwe.geercken@web.de
last update: 2016-07-16
