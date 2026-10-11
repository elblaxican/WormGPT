$token = $env:GITHUB_TOKEN
$gh = "C:\Program Files\GitHub CLI\gh.exe"
$result = & $gh auth login --with-token --hostname github.com 2>&1
Write-Output $result