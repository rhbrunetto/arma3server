waitUntil{!isNil "tz_util_isAdmin"};

_seconds = serverTime;

_min = _seconds/60;

_time = _min/60;

hint str format ["The server has been up for %1 hours", _time];	