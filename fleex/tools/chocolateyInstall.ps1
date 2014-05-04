$packageName = 'fleex'
$fileType = 'exe'
$url = 'http://download.fleex.tv/player/fleex-latest.exe'
$silentArgs = '/s'

try {
  Install-ChocolateyPackage $packageName $fileType $silentArgs $url
  
    #Write-ChocolateySuccess $packageName

} catch {
  Write-ChocolateyFailure $packageName "$($_.Exception.Message)"
  throw
}
