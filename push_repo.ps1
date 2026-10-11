$token = $env:GITHUB_TOKEN
$gh = "C:\Program Files\GitHub CLI\gh.exe"
$source = "C:\Users\admin\NoTrackCoder\projects\chat-ad3d7f4909745231af45a254"

Push-Location $source

# Clear env token so gh uses stored credentials
$env:GITHUB_TOKEN = ""

# Re-auth with the token
Write-Output "Authenticating..."
& $gh auth login --with-token --hostname github.com 2>&1 | ForEach-Object { Write-Output $_ }

# Check auth status
& $gh auth status 2>&1 | ForEach-Object { Write-Output $_ }

# Try push
Write-Output "Pushing..."
& git remote set-url origin "https://$token@github.com/elblaxican/WormGPT.git" 2>&1
& git push -u origin main 2>&1