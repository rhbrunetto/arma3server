_allscores = getPlayerScores player;

_deaths = _allscores select 4;

_score = _allscores select 5;

_kills = _allscores select 0;

_count = count allPlayers;

hint str format ["You have killed %1 enemies and have a score of %2 and %3 deaths", _count, _score, _deaths];