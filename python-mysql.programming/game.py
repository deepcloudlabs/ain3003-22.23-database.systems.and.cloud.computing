squares = [
    {
        "penalty": -1,
        "reward": -1
    },
    {
        "penalty": -1,
        "reward": -1
    }
]
squares[0]["penalty"] = int(input("Player 1, please enter your penalty square number: "))
squares[0]["reward"] = int(input("Player 1, please enter your reward square number: "))
squares[1]["penalty"] = int(input("Player 2, please enter your penalty square number: "))
squares[1]["reward"] = int(input("Player 2, please enter your reward square number: "))
players_current_squares = [0, 0]

while players_current_squares[0] < 100 or players_current_squares[1] < 100:
    # TODO: implement game logic
    pass
