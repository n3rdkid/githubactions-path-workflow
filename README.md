GITHUB ACTIONS PATH CHECK

CheckList

## Triggers

- [ ] Pushing commits to the following branches will run workflow
  - [x] develop
  - [x] main
  - [x] [PROJECT_PREFIX]-* 
  - [x] NOTE : (It should run for any other branches as well)

- [ ] Creating a PR on the following branches should trigger the workflow
  - [ ] develop
  - [ ] main
  - [ ] PROJECT_PREFIX]-* 
  - [ ] NOTE : (It should run for any other branches as well)

## Actions/Steps

- [ ] Build is performed if the workflow is triggered
  - [x] `develop`
  - [x] `main`
  - [x] [PROJECT_PREFIX]-* 

- [ ] Deployment actions should be performed on the following
  - [x] push to `develop`
  - [x] tag push `v*.*.*`

- [x] Slack Notifications
  - [x] On success
  - [x] On Failure
