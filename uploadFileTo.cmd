@echo off
:: <host_file_path> <container_id> <container_dest_path>
"D:\Git\bin\bash.exe" --login -i -- "./uploadFileTo.sh" C:/Users/rexhanggu/Documents/DockerFiles/1.txt 1bdab9f6926c /usr/src/app/
echo done.
pause
