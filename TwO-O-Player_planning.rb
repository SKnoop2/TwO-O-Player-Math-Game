# Task 1: extract nouns to create classes
  # players
    # scores
  # question
    # answers
  # game


# Task 2: Roles for classes
  # players
    # state: name
    # state: selected or unselected (ie who's turn it is)
    # method: calling on the score class

  # scores
    # keeping a running tally of the score of each player
    # state: starting score / number of lives
    # method: adjust the score when a question is answered incorrectly
    # method to access player lives  or calculate them instead of storing it

  # answers
    # write out a response to inform a player when they correctly or incorrectly answer a question
    # state: two different responses
  
  # questions
    # the basic outline for each math question
    # use random number generator

  # game
    # switch between players? Does one player continue answering the questions until they get one wrong? Or do players only get one turn at a time?
    # state: name (when it is a new turn)

  # tip: Classes shouldn't inherit things from each other?
  # tip: import / bundle items into one file and then export