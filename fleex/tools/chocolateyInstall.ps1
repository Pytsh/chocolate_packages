$packageName = 'fleex'
$fileType = 'exe'
$url = 'http://download.fleex.tv/player/fleex-2.1.1.exe'
$silentArgs = '/S'

try {
  Install-ChocolateyPackage $packageName $fileType $silentArgs $url
  
    #Write-ChocolateySuccess $packageName

} catch {
  Write-ChocolateyFailure $packageName "$($_.Exception.Message)"
  throw
}
