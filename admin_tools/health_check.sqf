_healthtotall = getDammage player;

_healthtot = _healthtotall*100;

_health = 100 - _healthtot;

hint str format ["Your health is at %1", _health];