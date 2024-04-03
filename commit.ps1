<# This script creates automatically adds, commits and pushes to the main branch.

To commit with the message "automated commit: made changes to X", run:

.\commit.ps1 made with changes to X 

#>

param(
    [string]$msg = "default"
)

git add .
git status
git commit -m "automated commit: $msg"
$confirmation = Read-Host "Happy to push? [y/n]"
while ($confirmation -ne "y") {
    if ($confirmation -eq 'n') { exit }
    $confirmation = Read-Host "Ready? [y/n]"
}
git push origin main