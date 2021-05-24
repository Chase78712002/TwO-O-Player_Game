# Task 1: Extract Nouns for Classes
  * Player 1
  * Player 2
  * incorrect answer prompt
  * correct answer prompt
  * P1
  * P2
  * score
  * New turn prompt
  * Game over prompt
  * End prompt
  ## Possible classes
    1. player class
      - keeps track of the score
      - answers questions
      - loses a life 
    2. Question class
      - ask a question
      - returns whether answer give is correct or not

    3. game class
      - prompts a new turn
      - prompts the current lives for both players
      - annouces winner

# Methods for classes
  1. Player class
    - State:
      * lives remain
    - Behavior:
      * loses live
  2. Question class
    - State:
      * questions
      * answer_keys
    - Behavior:
      * generating questions
      * generating answer_keys
      * compares player_answer with answer_keys
  3. Game class
    - State:
      * current_player
      * current_input
      * game status: on or off
    - Behavior:
      * announces current lives
      * announces winner
      * switches game on and off , switches game off when no live remain
      * prompts question
      * prompts answers