#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

SKIP_HEADERS=1

while IFS=, read -r YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if (( SKIP_HEADERS ))
  then
    (( SKIP_HEADERS --))
  else
    RESULT=( $( $PSQL "INSERT INTO teams(name) values ('$WINNER') ON CONFLICT (name) DO UPDATE SET name = EXCLUDED.name RETURNING team_id;" ) )
    WINNER_ID=${RESULT[0]}

    RESULT=( $( $PSQL "INSERT INTO teams(name) values ('$OPPONENT') ON CONFLICT (name) DO UPDATE SET name = EXCLUDED.name RETURNING team_id;" ) )
    OPPONENT_ID=${RESULT[0]}

    RESULT=$( $PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) values ($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS);" )
  fi
done < games.csv
