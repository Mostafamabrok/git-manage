#!/bin/bash
Introduction () {
    echo "Git-manage, an easy to use and lightweight tool for managing multiple git repositories."
    echo -e "\nWhat would you like to do?"
    echo "1-Run a command on your desired set of repos."
    echo "2-Add to saved repo list."
    echo "3-View saved repo list."
    echo "4-Delete saved repo list."
    echo "5-Close Git-manage."
    read -p "Action:" action #Asks the user for what action they want to perform with Git-Manage.

    #The following if statments see what action the user wants to perform, then executes the respective function.
    if [[ "$action" == "1" ]]; then execute_in_repos ; fi 
    if [[ "$action" == "2" ]]; then add_to_repos ; fi
    if [[ "$action" == "3" ]]; then view_repos ; fi
    if [[ "$action" == "4" ]]; then delete_saved_repos ; fi
    if [[ "$action" == "5" ]]; then exit ; fi

    Introduction #This calls the Intro function within itself to allow the user to perform multiple actions without having to execute `git_manage.sh` again.
}

execute_in_repos () {
    #This block of code executes a command in every repo the user has saved.
    read -p "What command do you want to run? (Enter Command):" desired_command
    for line in $(cat SavedRepos.txt)
    do
    (cd $line; eval $desired_command)
    done
}

add_to_repos () {
    #This adds a saved repo to the list.
    read -p "Enter the full path to your repo." added_repo
    echo "$added_repo" >> SavedRepos.txt
}

delete_saved_repos () {
    #This code asks the user for permission to delete the list of savved repos, then deletes SavedRepos.txt, which is where the list is stored.
    read -p "Are you sure you want to delete your saved repos: (y/n)" permission
    if [[ "$permission" == "y" ]]
    then
    rm SavedRepos.txt
    echo "List of saved repos deleted"
    fi
}

view_repos () {
    #This code uses the `cat` function to show the user their list of saved repos.
    echo -e "Viewing list of saved repos...\n"
    cat SavedRepos.txt
    echo "" #Cheap way to create a new line for readibility's sake.
    read -p "Press any key to continue:"
}

Introduction #This starts the program by calling the Introduction function.