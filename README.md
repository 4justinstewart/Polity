Polity
======

90% of political action that directly affects you happens at the local level within town our city counsel, however, a marginal amount of people have knowledge of politics at this level.  Polity is a web and mobile based app to bridge this gap and create a tighter sense of community.

## Git Workflow

```
1.) git clone <link to master>

2.) git checkout -b <branch name ie. dashboard, crud, try to avoid names>

Adding and commiting should happen often -> 15 - 30 minutes

3.) git add -A

4.) git commit -m "ie. crud complete"
```
Anytime anyone in the group merges one of their branches into the github master, you want to work with the most current mater. Doing this will mitigate merge conflicts. Follow Steps 5 - 8.
```
5.) git checkout master (See the current local master on your machine)

6.) git pull (Retrieves the current master on github and merges with the your local master)

7.) git checkout <branch name from above>

8.) git merge master (Your branch is now merged with the master)
```
Now when you are ready to push to the Github, run through Steps 3 - 8, then push your remote branch
```
9.) git push origin <branch name from above>
```
Now your code is on github

### Resources for Development

[Check Voter Registration](http://www.chicagoelections.com/voterinfo.php)

[City Council Reports](http://chicityclerk.com/council/reports.php)

[City Budget Documentation](http://chicityclerk.com/legislation-records/journals-reports/city-budgets/)

[Open City Apps](http://opencityapps.org/)
