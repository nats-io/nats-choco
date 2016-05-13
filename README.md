# NATS Chocolatey Packaging

These are utilities to build [Chocolatey](https://chocolatey.org/) packages for NATS windows executables.  Chocolatey NuGet is a Machine Package Manager, somewhat like apt-get, but built with Windows in mind.

## Requirements
In order to build NATS chocolatey packages the following requirements must be met:

* A windows machine with powershell v2 or greater.  Most windows systems default to this.
* [Chocolatey](https://chocolatey.org/) must be installed and on the path.

## NATS Server (gnatsd) Package

### How it works
At install time the `gnatsd` package will download the appropriate zip file from the github nats.io release packages, then extract and place the contents where chocolatey requires them to be.
This simplifies the moderation process with Chocolatey, and ensures proper binaries are always downloaded.

### Instructions

1. `chdir` to the `gnatsd` direcory.
2. Inspect/Edit the `gnatsd.nuspec` and `tools\ChocolateyInstall.ps1` to ensure the correct version numbers are set.
3. `build_package` creates the package as a <gnatsd>.<version>.<packagefix>.nupkg file .
4. `test_package` and inspect output for errors.
4. Upload the package to Chocolatey, and begin the moderation process...
 
## TODO

- [ ] Automate versioning - accept version as a script parameter and generate nuspec files from a template
- [ ] STAN chocolatey package (depends on STAN release availability)

Contact <colin.sullivan@nats.io> for questions, issues, etc.
