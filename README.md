# gh-workflows
Bash scripts for git/GitHub workflows

## Barebones Initialization

To begin using `barebones` you must ensure that the supporting code is added to your system path. In the terminal, complete the following steps.

1. `cd ~`
2. `open .bash_profile`
3. Paste the following into your bash profile: `alias barebones="path/to/barebones.sh"`
4. Save the file
5. `source .bash_profile`

This should initialize the code to your profile.

## Barebones Usage

Barebones is specifically for creating an empty git repository that automatically pushes to GitHub. It is a _basic_ repo. Below is an example of using the barebones command.

```bash
$ barebones -fn my_folder -un w-decker
```
`barebones` takes two keyword arguments: `-fn` and `-un` which mean file/folder name and GitHub username respectively.



