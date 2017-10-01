---
title: "Codebook template"
author: "Kevin Dickens"
date: "09/30/2017"
---

## Unit 5 Homework
This is the homework assignment for Unit 5 of the MSDS6306 course at Southern Methodist University.  This homework predominantly deals with cleaning up raw data.

###Collection of the raw data
Data was given to us by the course instructor as two text files yob2015.txt and yob2016.txt.

###Notes on the original (raw) data 
Neither text file has column names.  The yob2016 file uses semicolons (;) as seperators while the yob2015 uses commas.
Raw data was imported into either df (yob2016.txt) or y2015 (yob2015.txt).

##Creating the tidy datafile
Column names were added to both the raw data.  Grep was used to remove errors in the 2016 data while the 2015 data was transformed into a top 10 list with most information removed.

##Description of the variables

###Dimensions
df - 32869 rows of 3 columns (Name (Factor), Sex(Factor), Instances(Integer))
y2016 - 32868 rows of 3 columns (Name (Factor), Sex(Factor), Instances(Integer))
y2015 - 33063 rows of 3 columns (Name (Factor), Sex(Factor), Instances(Integer))
girls - 10 rows of 2 columns (Name (Factor), Sex(Factor), Instances(Integer))

###Summary of variables
df - The raw data imported from yob2016.txt.
y2016 - cleaned up 2016 data.  1 Observataion removed as duplicate.
y2015 - raw data imported in from yob2015.txt.
girl - data cleaned up from y2015.  Removed the sex column and only reported the top 10 girl names.
