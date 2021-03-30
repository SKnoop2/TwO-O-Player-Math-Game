# Task 1: extract nouns to brainstorm classes
  * players
  * scores
  * question
  * answers
  * game


# Task 2: Describe Roles for classes, their state and methods
  # players
    * will keep track of their name and own score, and will need to answer questions
    * state: name
    * state: score
  
  # game
    # questions
      * contains the wording for each math question
      * use random number generator for the two variable numbers
      * state: 2 random number variables
      * method: show question

    # answers
      * write out a response to inform a player when they correctly or incorrectly answer a question
      * decrease player score when answer is wrong
      * show player scores
      * end turn
    
    # player guess
      * allow player to input answer

    # switch player
      * switch which player is the current player

    # start game
      * contains the loop logic to keep going until a player score reaches zero
  

  

