# TIC-TAC-TOE Game in Flutter

Welcome to the **Tic-Tac-Toe** game built with Flutter! This simple yet fun game allows you to play Tic-Tac-Toe against another player. 

# Demo [Tap here!](https://todolistapp-flutter.netlify.app/) 

When using a browser’s **Inspect** tool to view a website in **Phone mode** (mobile view), follow these steps:

1. **Right Click** on the webpage.
2. Select **Inspect** (or press `Ctrl + Shift + I` on Windows/Linux or `Cmd + Option + I` on macOS).
3. Once the developer tools open, locate the **device toolbar** icon at the top of the dev tools panel. It looks like a small phone and tablet symbol.
4. Click on the icon to toggle **Phone mode** (also known as **Responsive Design Mode**).
5. You can now view the site as it would appear on a phone or tablet. There is an option to select different devices from the dropdown at the top to simulate screen sizes, such as iPhone, Pixel, Galaxy, etc.

## Features
- User-friendly interface
- Simple game logic
- Displays winner or draw message
- Option to restart the game

## Installation

To run this application, make sure you have Flutter installed on your machine. 

You can follow the instructions on the official [Flutter installation guide](https://flutter.dev/docs/get-started/install).

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/tic-tac-toe.git
   ```
2. Navigate into the project directory:
   ```bash
   cd tic-tac-toe
   ```
3. Get the dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```

## Usage

1. When you start the app, you will see the **Home Page** with a **Start Game** button.
2. Click the **Start Game** button to navigate to the game page.
3. Players can take turns clicking on the grid to place their **X** or **O**.
4. The game will check for a winner after each move.

## Game Flow

- If **X** wins, a message will display: `X Won!`
- If **O** wins, a message will display: `O Won!`
- If the game ends in a draw, a message will display: `Draw!`

The game will automatically check for the end state after each player's turn.

## Restarting the Game

- After a game concludes, you will see a **Restart Game** button.
- Clicking the **Restart Game** button will reset the game board and allow you to start a new game.

## Contributing

If you'd like to contribute to the Tic-Tac-Toe game, please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes and commit them (`git commit -m 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a pull request.
