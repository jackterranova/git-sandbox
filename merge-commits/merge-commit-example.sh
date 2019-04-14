git init
git "Creating file myfile.txt with some text in it"
echo "this is a first edit" > myfile.txt
git add myfile.txt
git commit -m "initial"
git "Committed myfile.txt to local repo... showing log so far"
git log

echo "Creating new branch first-branch"
git checkout -b first-branch
echo "Modifying myfile.txt on first-branch"
echo "\n\nthis is an edit on first-branch" >> myfile.txt
git add myfile.txt
git commit -m "first first-branch commit"
echo "Committed first-branch changes"

echo "Now checking out master again"
git checkout master

echo "Creating new branch second-branch"
git checkout -b "second-branch"
echo "Modifying myfile.txt on second-branch"
echo "\n\nthis is an edit on second-branch" >> myfile.txt
git add myfile.txt
git commit -m "first commit on second-branch"
echo "Committed second-branch changes"

echo "Now checking out master again."
git checkout master

echo "Merging first-branch => master"
git merge first-branch
echo "Showing log again.  You should see a simple fast forward in the log"
git log

echo "Merging second-branch => master.  You should see a conflict."
git merge second-branch

echo "Modifying myfile.txt to remove the conflict.  (Normally you would do this in an editor (duh, right?)"
echo "this is a first edit" > myfile.txt
echo "\n\nthis is an edit on first-branch" >> myfile.txt
echo "\n\nthis is an edit on second-branch" >> myfile.txt

echo "Add and commit the change"
git add myfile.txt
git commit -m "commit for second-branch merge"
echo "Now you should see 2 commits: 1 for the commit to second-branch and 1 for the actual merge to master"
git log
