# declare variables
$GitHubUsername = 'psHyun7'
$CommitMessage = 'auto committed from auto-committing-setup.ps1'
$PracticeRepoDir = Read-Host "Please enter the absolute path of the practice directory"

#fork and clone this repo into the powershell-studio directory
git clone "https://github.com/psHyun7/powershell-practice" "$PracticeRepoDir"

#Step 5
Copy-Item $PSCommandPath $PracticeRepoDir

#Step 6
Set-Location $PracticeRepoDir

#Step 7
git add auto-committing-setup.ps1

#Step 8
git commit -m "$CommitMessage"

#Step 9
git push origin master