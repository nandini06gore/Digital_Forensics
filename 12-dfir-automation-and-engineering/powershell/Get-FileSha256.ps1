[CmdletBinding()]
param(
    [Parameter(Mandatory = $true, Position = 0)]
    [ValidateNotNullOrEmpty()]
    [string]$Path
)

$ErrorActionPreference = "Stop"

if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) {
    throw "File does not exist or is not a regular file: $Path"
}

Get-FileHash -LiteralPath $Path -Algorithm SHA256 |
    Select-Object Algorithm, Hash, Path |
    Format-List
