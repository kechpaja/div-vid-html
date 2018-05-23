Div-Vid-HTML
============

A joke script that allows you to write an HTML element `<xyz></xyz>` as
`<xyz><zyx>`. 

Single-character tags, as well as the double-character tag "dd", have been
replaced with new, non-palidromic tags: `an, bo, df, it, par, qu, st, un` in 
place of original `a b dd i p q s u`. 

The tags "dt" and "rt" have been replaced with "ddt" and "rbt" to avoid
collisions with reversed versions of "td" and "tr".

Original list of HTML tags was taken from 
https://www.html-5-tutorial.com/all-html-tags.htm. 


Note that this script is *very slow*, since I wrote it very hastily and didn't
bother to optimize it, given that it is mostly a joke. If I have extra time at
some point, I may try to reduce the number of calls to `sed` and/or otherwise
speed up execution.

Inspired by a [bad
tweet](https://twitter.com/jplur_/status/999106446766821376). 
