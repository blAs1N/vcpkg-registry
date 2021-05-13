# vcpkg-registry

## Introduction

blAs1N's vcpkg registry  

## How to update

All of these methods are based on [this](https://devblogs.microsoft.com/cppblog/registries-bring-your-own-libraries-to-vcpkg/)  

1. Enter the commit timeline of the repository to be updated.  
2. Copy the id of the commit to be updated.  

![Commit timeline](https://user-images.githubusercontent.com/37008374/118120554-09722100-b42b-11eb-95f7-f42958957e10.PNG)

3. Paste the copied id into the REF in /ports/update-repo/portfile.cmake  
 
![portfile.cmake](https://user-images.githubusercontent.com/37008374/118123159-d2057380-b42e-11eb-8606-02d9cb02dbe9.PNG)

4. Type this command
  * git add ports/update-repo
  * git commit -m "Commit message"

5. Paste the output value when entering "git rev-parse HEAD:ports/update-repo" to git-tree in versions/"update-repo's first letter"-/update-repo.json

![update-repo.json](https://user-images.githubusercontent.com/37008374/118123462-3e807280-b42f-11eb-9967-b71542e669cb.PNG)

4. Type this command
  * git add versions
  * git commit --amend --no-edit
  * git push
