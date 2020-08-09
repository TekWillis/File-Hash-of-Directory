<#
HOW TO GET THE FILE HASH OF AN ENTIRE DIRECTORY

powershell.. get-file hash of entire directory to compare to another directory... 
get file hash for each file and appeand it to another a .txt and once all the files hash's are appended to the .txt... 
get the file hash of that .txt and it should be a direct comparison. 


#>


#getting direcotry
$direct = Read-Host "What is the file path? "
$file = "*.*"

foreach ($file in $direct){
    Get-FileHash -Path $direct -Recurse -Algorithm MD5 >> c:\temp\hash.txt

}