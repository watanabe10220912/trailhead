# XXX

## How to Deploy
1. Create a scratch org
    ```
    sfdx force:org:create -s -f config/project-scratch-def.json
    ```
1. Push source to scratch org
    ```
    sfdx force:source:push
    ```
1. Assign permission set
    ```
    sfdx force:user:permset:assign -n DreamInvest 
    ```
1. Open scratch org
    ```
    sfdx force:org:open 
    ```
## Login Information
- XXX
  - User name: XXX
  - PW: XXX
  ```
  sfdx force:user:display -u `User Name`
  sfdx force:user:password:generate -u `User Name`
  ```