# GeoLocation

## How to Scratch Org Deploy
1. Create scratch org
    ```
    sfdx force:org:create -f config/project-scratch-def.json -a GeoTestOrg
    ```
1. Push source to scratch org
    ```
    sfdx force:source:push -u GeoTestOrg
    ```
1. Assign permission set
    ```
    sfdx force:user:permset:assign -n Geolocation -u GeoTestOrg
    ```
1. Import test data

    ```
    sfdx force:data:tree:import --sobjecttreefiles data/Account.json
    ```
1. Open scratch org
    ```
    sfdx force:org:open -u GeoTestOrg
    ```
## Login Information
- ~6/26/2021  GeoTestOrg
  - User name: test-rk9hmrmqpgms@example.com
  - PW: X1KKx0#)py