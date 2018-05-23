Div-Vid-HTML
============

After seeing a Twitter user post a (presumably joking) comment about how in
some parallel universe HTML tags probably end with their reversed equivalents,
I decided to write a quick Bash script to convert that variant of HTML to
regular HTML. 

Single-character tags, as well as the double-character tag "dd", have been
replaced with new, non-palidromic tags: `an, bo, df, it, par, qu, st, un` in 
place of original `a b dd i p q s u`. 

The tags "dt" and "rt" have been replaced with "ddt" and "rbt" to avoid
collisions with reversed versions of "td" and "tr".

Original list of HTML tags was taken from 
https://www.html-5-tutorial.com/all-html-tags.htm. 
