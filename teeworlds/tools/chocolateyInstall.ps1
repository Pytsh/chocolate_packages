$packageName = 'teeworlds'
$url = 'http://www.teeworlds.com/files/teeworlds-0.6.2-win32.zip'
$url64bit = 'http://www.teeworlds.com/files/teeworlds-0.6.2-win64.zip'
$unzipLocation = '%ChocolateyInstall%\lib\mypackage'

try {
  Install-ChocolateyZipPackage $packageName $url $unzipLocation $url64bit

  #Write-ChocolateySuccess $packageName

} catch {
  Write-ChocolateyFailure $packageName "$($_.Exception.Message)"
  throw
}
