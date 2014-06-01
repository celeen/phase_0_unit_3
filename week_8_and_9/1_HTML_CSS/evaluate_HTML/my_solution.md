## Evaluate a Website! 
 
1) How does this website follow HTML Best Practices? Are there any places where 
it does not?  Provide examples of the "bad" code.

Perhaps my standards and expectations are off, but I am not super impressed with this site. For something that looks so stark, bare, simple, the code seems needlessly complex. And considering the content! It's hacker news, for goodness' sake... you'd think they'd be able to hack together something a bit cleaner? I *have* noticed that lots of hacker/programming sites tend not to be so concerned with design, more concerned with deeper level code. 

I don't have too much experience with tables, so maybe I'm just not too familiar with what I'm looking at. I think tables were a good choice for this layout; probably more efficient and easier to work with than divs and css spacing.

They've included some css in their html file, which I understand is bad practice, particularly if you have a seperate css file, which they do. They've got a lot of repetetive style instruction in here because of that.

I wonder if they impliment any kind of programming on the backend to fill this table. MY experience with Jekyll tells me (a) it's possible, and (b) it would make a lot of sense for this layout. Just outline the structure of one table row in HTML, and then get it to repeat for 20-50 different entries...
 
2) What do you think of the HTML? Did the writers use IDs and Classes properly? 

Overall, I'd say so... they use id's uniquely, and classes repetetively. The names of each aren't very clear, initially. I do like that each row has a unique ID, and each column uses a class. That seems appropriate, to say the least.

upon closer inspection, I can see that the id's are actually being used in conjunction with some JS (or possibly jquery?) to return the most popular articles forst. When the user clocks on the upvote button, it returns a JS command that gives the item another vote. Cool!

I wonder if they impliment any kind of programming on the backend to fill this table. MY experience with Jekyll tells me (a) it's possible, and (b) it would make a lot of sense for this layout. Just outline the structure of one table row in HTML, and then get it to repeat for 20-50 different entries... If they are, I would assume that's why the table style is embedded in the html, and why it repeats. The rendered HTML must incorporate whatever backend program automates the display structure.

Did you like the way they used HTML tags?  Please use examples with your arguments.
 
3) How did the authors handle formatting? Did they include it in the HTML or 
separate it into a CSS file? Or did they do both?  Again, include examples.

Most of the formatting (font type, size, color, div width, etc...) is in the CSS file, which is super succint and well organized. There's a bit od stray styling (tr height- it looks mostly the same, just written seperately for each tr) in the HTML file, and I'm having trouble figuring out why it's there.
 
4) Did the authors include anything you didn't immediately understand? 
If so, what?

I don't entirely understand the upvote code in the id's initially. I'm assuming that's what it does, but I'm not quite sure how. Probably there's more clarity in the js file. Still not super clear on the overflow css option, either.
 
5) How did the authors organize the CSS file? Was it DRY?

Yes! I love DRY CSS. IT seems like an interesting challenge because of the cascading part.

Their CSS file looks great, but why oh why is there repeating css in the html file?
 
6) Did the authors incorporate any responsive design into the site?

Yeah, there's a small couple blurbs about mobile device screen pixel ratio, which only changes the upvote arrow background size and image, and the rotation of a device, in the CSS file.
 
7) What are your overall thoughts on the HTML/CSS from this website based on 
what you've read?

It looks super messay at first. I think probably that is because of the way it's coded on the backend. I can't imagine a site like hacker news *doesn't* impliment some kind of program that DRYes out the display of HTML, and then once the browser renders it I can see the finished file with all the right article lengths in it...

Is that where a database comes in? I bet the use a database of posts with upvote information that they draw from, and the the JS pulls that data and uses it to iterate through the HTML skeleton with a limit of rows in the HTML table, inserting the information appropriately.

