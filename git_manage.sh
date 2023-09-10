#!/bin/bash
Introduction () {
    echo "Git-manage, an easy to use and lightweight tool for managing multiple git repositories."
    echo -e "\nWhat would you like to do?"
    echo "1-Run a command on your desired set of repos."
    echo "2-Add to saved repo list."
    echo "2-View saved repo list."
    echo "3-Delete saved repo list."
}

execute_in_repos () {
    #Ask what command to execute
    #For each line in savedrepos, change directory to that line and execute the command.
    echo "prevents runtime bug"
}

add_to_repos () {
    read -p "Enter the full path to your repo." added_repo
    echo "$added_repo" >> SavedRepos.txt
}

delete_saved_repos () {
    #Make sure the user wants to delete their list of savedrepos
    #Delte savedrepos.txt
    echo "prevents runtime bug"
}