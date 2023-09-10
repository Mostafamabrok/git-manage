#!/bin/bash
Introduction (){
    echo "Git-manage, an easy to use and lightweight tool for managing multiple git repositories."
    echo -e "\nWhat would you like to do?"
    echo "1-Run a command on your desired set of repos."
    echo "2-Add to saved repo list."
    echo "2-View saved repo list."
    echo "3-Delete saved repo list."
}

execute_in_repos (){
    #Ask what command to execute
    #For each line in savedrepos, change directory to that line and execute the command.
}

add_to_repos (){
    #Ask for path to repo
    #Append it to saved repos
}

delete_saved_repos (){
    #Make sure the user wants to delete their list of savedrepos
    #Delte savedrepos.txt
}