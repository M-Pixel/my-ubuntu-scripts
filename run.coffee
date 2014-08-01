#!/usr/bin/env coffee

inquirer = require "inquirer"
sh = require "execSync"
chalk = require "chalk"

inquirer.prompt [
    type: "checkbox"
    message: "What would you like to install?"
    name: "thingsToInstall"
    choices: [
        { name: "Moka + Faba Icons" }
    ]
], (answers) ->
    tti = answers.thingsToInstall
    results = []
    if "Moka + Faba Icons" in tti
        sh.run "sudo add-apt-repository ppa:moka/stable"
        sh.run "sudo apt-get update"
        sh.run "sudo apt-get install -y moka-icon-theme faba-icon-theme unity-tweak-tool"
        results.push chalk.bgGreen "Activate your new icons through the Unity Tweak Tool"
        
    #
    
    for result in results
        console.log result
