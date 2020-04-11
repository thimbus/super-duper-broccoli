from os import popen, system
from time import sleep

README = """
# super-duper-broccoli

Repo mostly for learning purposes. Contains team members' projects/exercises.

```
Don't make changes to the master branch. All changes should go under your own branch.
```

## Branches

<!---->
{}
<!---->

"""

if __name__ == "__main__":

    # track if there are any errors
    FAILED = False
    
    # string to add content in README
    string = ""

    # baseurl for the hyperlinks
    baseurl = "https://github.com/Thimbus/super-duper-broccoli/blob/{}/{}"

    # get branches, excluding master
    branches = [branch.lstrip().rstrip() for branch in popen("git branch").readlines()]
    branches.remove("* master")

    for branch in branches:
        try:
            # checkout to branch and add branch name to README string
            system("git checkout {}".format(branch))
            sleep(0.5)
            string += "### `{}`\n".format(branch)

            # read branch contents
            content = [item.lstrip().rstrip() for item in popen("dir /B").readlines()]
            sleep(0.5)

            for item in content:
                url = baseurl.format(branch, item)
                string += "[{}]({})\n".format(item, url)

            string += "\n"
        except:
            print("failed while iterating on {}".format(branch))
            FAILED = True
            break
    
    if not FAILED:
        system("git checkout master")

        with open("README.md", 'r+') as f:
            f.seek(0)
            f.write(README.format(string))
            f.truncate()

        print("done :)")
