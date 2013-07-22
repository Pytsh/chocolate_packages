$packageName = 'fleex'
$fileType = 'exe'
$url = 'https://fleex.blob.core.windows.net/misc/installer/fleex-2.0.0.exe'
$silentArgs = '/S'

try {
  Install-ChocolateyPackage $packageName $fileType $silentArgs $url
  
    #Write-ChocolateySuccess $packageName

} catch {
  Write-ChocolateyFailure $packageName "$($_.Exception.Message)"
  throw
}
