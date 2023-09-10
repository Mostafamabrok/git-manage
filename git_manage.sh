#!/bin/bash
Introduction () {
    echo "Git-manage, an easy to use and lightweight tool for managing multiple git repositories."
    echo -e "\nWhat would you like to do?"
    echo "1-Run a command on your desired set of repos."
    echo "2-Add to saved repo list."
    echo "2-View saved repo list."
    echo "3-Delete saved repo list."
    echo "4-Close Git-manage."
    read -p "Action:" action

    if [[ "$action" == "1" ]]; then execute_in_repos ; fi
    if [[ "$action" == "2" ]]; then add_to_repos ; fi
    if [[ "$action" == "3" ]]; then delete_saved_repos ; fi
    if [[ "$action" == "4" ]]; then exit ; fi

    Introduction
}

execute_in_repos () {
    read -p "What command do you want to run? (Enter Command):" desired_command
    for line in $(cat SavedRepos.txt)
    do
    (cd $line; eval $desired_command)
    done
}

add_to_repos () {
    read -p "Enter the full path to your repo." added_repo
    echo "$added_repo" >> SavedRepos.txt
}

delete_saved_repos () {
    read -p "Are you sure you want to delete your saved repos: (y/n)" permission
    if [[ "$permission" == "y" ]]
    then
    rm SavedRepos.txt
    echo "List of saved repos deleted"
    fi
}

Introduction