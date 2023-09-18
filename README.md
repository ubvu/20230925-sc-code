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

- `pip install gitautopush`
- `git clone` this repository to your local directory
- if you cloned the repository a while ago, `git pull` to avoid conflicts
- in terminal, start observing the folder by command: `gitautopush /path/to/my/repo/folder`
- you can also setup a delay between live coding and the notes in the
  repository by adding `--sleep <INT>` argument, `INT` being the amount of time
  (in seconds) to wait in between attempts to synchronize.
- in the folder of the repository, create a new R script/ Rmarkdown file and
  save the changes
- see if it automatically pushes to the repository
- save changes often with <kbd>Ctrl</kbd>+<kbd>S</kbd> in order for the changes
  to be pushed o the repository
- once you finish your lesson, make sure to close `gitautopush` with
  <kbd>Ctrl</kbd>+<kbd>C</kbd>

### Troubleshooting

- git requires SSH authentication
    - Add [SSH agent](https://stackoverflow.com/questions/10032461/git-keeps-asking-me-for-my-ssh-key-passphrase): write `eval $(ssh-agent)` followed by `ssh-add` in your terminal
    - If you don't have SSH key set up yet, set it up without a passphrase (just hit enter when prompted for it)
    - You can try with `git clone` using  `https` (worked for me but normally not recommended)
- ValueError: A `git status` command didn't work, are you sure this is a git repository?
    - It might be occuring when there are already some changes to be staged once you launch `gitautopush`. First, run `gitautopush`, then start creating files or making changes to the existing ones. 
    - Another thing to try is to first commit and push one file manually to the repository, once you have done that and no changes are staged run `gitautopush`

This work is licensed under a [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).
