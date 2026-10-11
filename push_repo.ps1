$token = $env:GITHUB_TOKEN
$gh = "C:\Program Files\GitHub CLI\gh.exe"
$source = "C:\Users\admin\NoTrackCoder\projects\chat-ad3d7f4909745231af45a254"

Push-Location $source

# Re-auth with the token
Write-Output "Authenticating..."
$authResult = & $gh auth login --with-token --hostname github.com 2>&1
Write-Output $authResult

# Check auth status
Write-Output "`nAuth status:"
& $gh auth status 2>&1

# Set remote URL and push
Write-Output "`nSetting remote and pushing..."
& git remote set-url origin "https://x-access-token:$token@github.com/elblaxican/WormGPT.git"
& git push -u origin main 2>&1