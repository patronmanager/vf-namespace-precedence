## Visualforce Namespace Precedence Bug

### Repro case
```
sfdx force:org:create -f config/project-scratch-def.json --setdefaultusername
sfdx force:source:push
sfdx force:org:open
```
Once logged into the org, visit the VIsualforce page at
`/apex/GatewayTest`

Expected mesage: "This should say Hey there: Hey there"

Next, switch branches and push (this will try to update the API version of all of the Apex and Visualforce)

```
git checkout api53
sfdx force:source:push
```

### Expected: Success

### Actual:
```
components/GatewayRender.component: ERROR at line 1, column 1 - Invalid field something for SObject PaymentGateway
```