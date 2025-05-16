# RestartExplorer_v4.ps1
# This script restarts the Windows Explorer process and automatically closes when complete

# Set window title
$host.UI.RawUI.WindowTitle = "Explorer Restart Utility"

Write-Host "Restarting Windows Explorer..." -ForegroundColor Cyan

try {
    # Get the process ID of explorer.exe
    $explorerProcess = Get-Process -Name explorer -ErrorAction SilentlyContinue

    if ($explorerProcess) {
        # Kill all explorer processes
        $explorerProcess | ForEach-Object { 
            Write-Host "Stopping explorer.exe (PID: $($_.Id))" -ForegroundColor Yellow
            Stop-Process -Id $_.Id -Force 
        }
        Write-Host "Explorer process stopped" -ForegroundColor Yellow
    } else {
        Write-Host "Explorer process not running" -ForegroundColor Yellow
    }

    # Wait a moment to ensure process is completely terminated
    Start-Sleep -Seconds 2

    # Start explorer.exe again
    Write-Host "Starting new explorer.exe process..." -ForegroundColor Cyan
    Start-Process explorer.exe

    Write-Host "Windows Explorer has been restarted successfully!" -ForegroundColor Green
    
    # Brief pause so user can see the success message
    Start-Sleep -Seconds 2
}
catch {
    Write-Host "An error occurred: $_" -ForegroundColor Red
    
    # Only pause for user input if there's an error
    Write-Host "`nPress any key to exit..." -ForegroundColor Gray
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
}

# Script will automatically exit here