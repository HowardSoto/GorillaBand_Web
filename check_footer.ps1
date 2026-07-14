$text = [System.IO.File]::ReadAllText('c:\Users\Howard Soto\Desktop\test114514\v2.html')
$lines = $text -split "`r?`n"

# Look at what section classes exist in CSS range 600-870
for ($i = 600; $i -lt 870; $i++) {
    $line = $lines[$i]
    if ($line -match '^\s*\.' -and $line -match '\{') {
        Write-Output "Line $($i+1): $($line.Trim())"
    }
}
