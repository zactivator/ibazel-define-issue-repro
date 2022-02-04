# Issue
ibazel is not passing `--define` attributes in `run`, but it does so under `build`

# Repro
This contrived example just runs a `sed` substitution on a bash script and then
tries to run resulting script.
```(bash)
ibazel run --define=replacement='s/Hello/Hi/g' //:sed_file
```
