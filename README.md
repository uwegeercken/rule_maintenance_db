rule_maintenance_db
===================
MySQL database for the rule maintenance web application. contains the required tables for
the rule_maintenance web app to work.

- import the sql file to the server

example: 
mysql -u root -p < ruleengine_rules.sql

This will create the database (named: ruleengine_rules), the required tables and default data required by the web application.

the rule maintenance application uses the table "user" for authentication. the user is admin and the password is also admin. use this user to login to the web application. you can change the password through the web interface.

the latest version of this schema introduces some changes as of November 26, 2014 - some fields have been added and renamed. If you use this schema, make sure you also use the latest version of the web application.

   Copyright (C) 2008-2015  Uwe Geercken
    
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
last update: 2015-03-01
