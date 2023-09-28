[![License: CC BY 4.0](https://img.shields.io/badge/License-CC_BY_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)

# Software Carpentry Workshop Autopush R Code

This repository is used to share code that our instructors explain in the
[Software Carpentry workshop][sc-uva] on 25.- 28.09.2023 by University of Amsterdam & Vrije Universiteit Amsterdam.

[sc-uva]: https://ubvu.github.io/2023-09-25-uvavu/



## Usage for Learners

The repository should mimic the project structure of the R project that has
been created by the instructors during the Data Carpentry.

- In the files list above, find a folder icon with the name of the project that
  the instructor has created. This folder will likely be called
  `software-carpentry`.
- Go to the file in which the instructor is now coding:
  - **Day 1:** 
    - link to file
  - **Day 2:** 
    - 
- You don't see the most recent lines of code? Refresh the page and see the new commands coming in!

*Note*: you will only see non-empty folders. You still need to create folders to follow the workshop smoothly.

## Usage for Instructors

Instructors can automatically update this repository using [gitautopush](https://pypi.org/project/gitautopush/).

### Prerequisites for the setup

To work with the solution Instructors need to have the following setup ready:
- Python and pip installed
- Git installed
- GitHub account added to the repository as a Contributor 

### Installation and usage

In your local computer:   
- in a first terminal window `git clone` this repository to create a tracked working directory
- organize your lesson so that the files you want to share are in this working directory
- if you already cloned this repository a while ago, `git pull` to avoid conflicts
- in a second terminal window, install gitautopush with `pip install gitautopush`
- in this second terminal window, start observing the folder with the command: `gitautopush --sleep <INT> /path/to/my/repo/folder`. `<INT>` is the amount of time (in seconds) between attempts to synchronise the coding in the local repository and the copy in the remote; a delay of 2-5 seconds is a reasonable estimate to follow the lesson closely
- save the files in the working directory often and regularly (even automatically). The manual way is with <kbd>Ctrl</kbd>+<kbd>S</kbd>
- double check in the second terminal window if gitautopush automatically pushes your changes to the repository: in case of failure, the errors `git` throws should be inside the message of gitautopush  
- once you finish your lesson, close gitautopush in the second terminal window with <kbd>Ctrl</kbd>+<kbd>C</kbd> or close the terminal window altogether

### Troubleshooting

- git requires SSH authentication
    - Add [SSH agent](https://stackoverflow.com/questions/10032461/git-keeps-asking-me-for-my-ssh-key-passphrase): write `eval $(ssh-agent)` followed by `ssh-add` in your terminal
    - If you don't have SSH key set up yet, set it up without a passphrase (just hit enter when prompted for it)
    - You can try with `git clone` using  `https` (worked for me but normally not recommended)
- ValueError: A `git status` command didn't work, are you sure this is a git repository?
    - It might be occuring when there are already some changes to be staged once you launch `gitautopush`. First, run `gitautopush`, then start creating files or making changes to the existing ones. 
    - Another thing to try is to first commit and push one file manually to the repository, once you have done that and no changes are staged run `gitautopush`

This work is licensed under a [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/). 
