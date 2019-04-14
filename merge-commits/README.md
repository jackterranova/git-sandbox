Simple example to show how commits after a merge conflict resolution result in an extra commit.

When merging a branch to master when master has not changed since the branch a simple fast forward commit will occur.

When master has changed a merge conflict will occur.  When merging you will need to resolve the conflict which will require another commit.  So now your history will show the commit you made to the branch and the commit that shows the changes you had to make to resolve the conflict ("the merge commit")