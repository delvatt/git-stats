# git-stats.
Tracking the evolution of LOC in source files over commit history.

## Before running.
Make sure the script's shebang points to your correct shell env.

**Make it executable**

`$ chmod u+x ./stats.sh` 

and then

**if stats.sh at the root of a git repo:**

`$ ./stats.sh . FILE_FILTER_PATTERN`

**elsewhere:**

`$ ./stats.sh PATH_TO_ANY_GIT_REPO FILE_FILTER_PATTERN`

**Note:**

The FILE_FILTER_PATTERN param is optional.
