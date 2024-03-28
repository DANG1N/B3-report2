<# This script creates automatically adds, commits and pushes to the chosen branch #>

param(
    [string]$msg = "default", [string]$branch = "main"
)
git checkout $branch
git add .
git status
git commit -m "automated commit: $msg"
$confirmation = Read-Host "Happy? [y/n]"
while ($confirmation -ne "y") {
    if ($confirmation -eq 'n') { exit }
    $confirmation = Read-Host "Ready? [y/n]"
}
git push -u origin $branch