$gh = "C:\Program Files\GitHub CLI\gh.exe"
$repo = "WormGPT"
$source = "C:\Users\admin\NoTrackCoder\projects\chat-ad3d7f4909745231af45a254"

Push-Location $source

# Create repo
& $gh repo create $repo --public --source=. --push 2>&1