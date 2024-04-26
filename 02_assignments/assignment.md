## Submission Information

🚨 **Please review our [Assignment Submission Guide](https://github.com/UofT-DSI/onboarding/blob/main/onboarding_documents/submissions.md)** 🚨 for detailed instructions on how to format, branch, and submit your work. Following these guidelines is crucial for your submissions to be evaluated correctly.

### Submission Parameters:
* Submission Due Date: `11:59 PM - 27/04/2024`
* The branch name for your repo should be: `assignment`
* What to submit for this assignment:
    * This markdown file (assignment.md) should be populated and should be the only change in your pull request.
* What the pull request link should look like for this assignment: `https://github.com/<your_github_username>/shell/pull/<pr_id>`
    * Open a private window in your browser. Copy and paste the link to your pull request into the address bar. Make sure you can see your pull request properly. This helps the technical facilitator and learning support staff review your submission easily.

Checklist:
- [ ] Create a branch called `assignment`.
- [ ] Ensure that the repository is public.
- [ ] Review [the PR description guidelines](https://github.com/UofT-DSI/onboarding/blob/main/onboarding_documents/submissions.md#guidelines-for-pull-request-descriptions) and adhere to them.
- [ ] Verify that the link is accessible in a private browser window.

# Assignment: The Secret Password

You are stuck in a virtual room and can only leave if you figure out the password! Fortunately, somebody left behind 6 clues for you to find the secret password, but the messaging is not that clear. It is your job to discover what the secret password is!

1. The very odd and inedible ingredient in a cake recipe

### No idea on how to automate this search, if do it manually this can be used:
### Go to the destination folder:    cd 02_assignments/clues/food/cake
### Open files one by one:   cat chocolate_cake.txt and find the odd and inedible ingredient
### OR
#### If exact file known and ingredient name in known this can search the string:      grep -r "Paper" 02_assignments/clues/food/cake
### OR
#### If exact file is unknown and ingredient name in known this can search the string: find . -type f -exec grep -H "Paper" {} +

## Paper Rings

2. The season number that contains only 18 episodes (Hint: How do you list them?)

### Go to the destination folder:    cd 02_assignments/clues/shows/friends
### Now we can loop through the folders and find the one that contains 18 files
### for season_folder in season_*; do
###    num_episodes=$(ls -1 "$season_folder" | wc -l)
###    if [ "$num_episodes" -eq 18 ]; then
###        season_number=$(echo "$season_folder" | sed 's/season_//')
###        echo "$season_number"
###    fi
### done


## 10

3. Fifth word of Season 6, Episode 21 of Friends

### Go to the destination folder:       cd 02_assignments/clues/shows/friends/season_6
### Find the word:                      awk '{print $5}' "$(ls -1 *21.txt | head -n 1)"

## Meets

4. Fifth word of the fifth fictional Space Wars series

### Go to the destination folder:       cd 02_assignments/clues/movies/space_wars
### Find the word:                      awk '{print $5}' fifth_movie.txt

## and

5. Second word of this song that's exactly 4 minutes long in this "colour" album

### Go to the destination folder:       cd 02_assignments/clues/albums/red
### Find the word:                      grep '^Title: ' song_5.txt | sed 's/Title: //' | awk '{print $2}'

## Lucky

6. The fourth word to the fourth Hunger Games movie

### Go to the destination folder:       cd 02_assignments/clues/movies/hanger_games
### Find the word:                      awk '{print $4}' movie_4.txt

## the

## Instructions
1. Fork this Shell learning module repository following these [instructions](https://github.com/UofT-DSI/onboarding/blob/main/onboarding_documents/submissions.md#setting-up)
2. Use your bash skills (such as `cd`, `cat`, etc.) to figure out what the secret password is! You will be exploring the `clues` directory in your bash terminal.
3. Write the secret password in your own version of this markdown file in your forked repo.

**What is the secret password?**
```
Your answer here...

Paper Rings
10
Meets
and
Lucky
the
```

|Criteria|Complete|Incomplete|
|---|---|---|
|Secret Password|The user properly used the proper bash commands to find the secret password.|The user did not properly used the proper bash commands to find the secret password.|



If you encounter any difficulties or have questions, please don't hesitate to reach out to our team via our Slack at `#cohort-3-help`. Our Technical Facilitators and Learning Support staff are here to help you navigate any challenges.
