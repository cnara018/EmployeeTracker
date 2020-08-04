const actions = [

    {
        type: "list",
        name: "actions",
        message: "What would you like to to?",
        choices: [
            "Add a new department",
            "Add a new role",
            "Add a new employee",
            "View all current departments",
            "View all current roles",
            "View all current employees",
            "Update currenty employee role",
            "Exit"

        ]

    }
]



module.exports = { actions }