
GIT
+++

Git is free & open source, distributed version control system designed to
handle everything from small to very large projects with speed and efficiency.

`Git Documentation`_

http://gitready.com/

.. _`Git Documentation`: http://git-scm.com/documentation


Commands References
-------------------

GIT Init::

	mkdir ${project_directory}
	cd ${project_directory}
	git init

Add files::

	git add <filename>
	git add .

Remove files::

	git rm <filename>
    
Rename files::

	git mv <old.filename> <new.filename>
    
Ignore files::

	cat .gitignore

Commit Files::

	git commit -m 'Initial commit'

Diff files::

	git diff                 # changes between index and working files
	git diff --staged        # changes between HEAD and index
	git diff HEAD            # changes between HEAD and working files

Last commit::

	git show                 # review last commit
	git show --stat          # just the stats
	git show --name-status
        git show HEAD
        git show HEAD^^
        git show master~5
        git show master@{june.23}


GIT clone::

	git clone /home/guptav/workspace/myproject

GIT updates::

	git fetch                # To get updates
	git pull                 # To fetch and merge

Logs::

	git log                  # See commit history
	git log -- some/file     # Limit to specific path
	git grep -e "pattern" --some/file
	git log -p
	git log --stat
	git log -5 master@{yesterday}
        git log --since="2 weeks ago"
        git log --before="2 weeks ago"
        git log --author="Vaibhav" --since="10 days ago"

	git reflog

Branches::

	git branch -l            # Local branches
	git tag <tagname>

Git Format Patch::

	git format-patch -1

Status::

	git status

Configuration::

        git config --global user.name "Vaibhav Gupta"
        git config --global user.email "vaibhav.gupta@gmail.com"
