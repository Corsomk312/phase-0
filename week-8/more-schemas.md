** I can't find a way to put images inline on windows (stupid mac elitists... no offense), so sorry for the links instead! If you know a way pleaase comment on how to do it! Thanks.**

Release 2:

https://github.com/Corsomk312/phase-0/blob/master/week-8/imgs/Release_1_OneToOne.JPG

Release 3:

https://github.com/Corsomk312/phase-0/blob/master/week-8/imgs/Release_2_ManyToMany.JPG

Release 4:

https://github.com/Corsomk312/phase-0/blob/master/week-8/imgs/Release_4_Refactor.JPG

Reflection:

What is a one-to-one database?

A one-to-one database is when the relationship of one item extends only to one of another, and vice versa. You can only have one SSN and a SSN can only be assigned to 1 person (legally speaking of course). 

When would you use a one-to-one database? (Think generally, not in terms of the example you created).

I found it hard to come up with more than one example of a one-to-one relationship. I'm sure there are situations, say you want a record of single-family homes and what family lives there. That would be one family to one home. You would use it when you know that these relationships can technically go into one table, but with the idea of simplicity and cleaner organization you can create 2 tables.

What is a many-to-many database?

A many-to-many database is one where you have two groups of information that can be connected, but have many different attributes on top of the one they are connecting.  

When would you use a many-to-many database? (Think generally, not in terms of the example you created).

You could use this when you have to group information about different groups, say keep track of information about charity donations from companies. One is company information, and the other is what they're doing for the charity, volunteering, money, supplies, etc.

What is confusing about database schemas? What makes sense?

In theory they make a lot of sense to me, and the schema designing hasn't been too tricky. Coming up with some way of identifying things uniquely is a little confusing. Also picturing the relationship between these things is a new way of thinking, so that was a little tough. What makes sense is the logic behind it. Keeping things in different tables, but allowing them to be connected within these joiner tables really helps to keep things eloquently organized. 