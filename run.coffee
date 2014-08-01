#!/usr/bin/env coffee

inquirer = require "inquirer"
sh = require "execSync"
chalk = require "chalk"

choices = [
    { name: "Moka + Faba Icons" }
    { name: "exFAT support" }
]
    
for choice in choices
    choice.checked = true

inquirer.prompt [
    type: "checkbox"
    message: "What would you like to install?"
    name: "thingsToInstall"
    choices: choices
], (answers) ->
    tti = answers.thingsToInstall
    results = []
    if "Moka + Faba Icons" in tti
        sh.run "sudo add-apt-repository ppa:moka/stable"
        sh.run "sudo apt-get update"
        sh.run "sudo apt-get install -y moka-icon-theme faba-icon-theme unity-tweak-tool"
        results.push chalk.bgGreen "Activate your new icons through the Unity Tweak Tool"
    if "exFAT support" in tti
        sh.run "sudo apt-get install exfat-fuse exfat-utils"
    #
    
    for result in results
        console.log result
