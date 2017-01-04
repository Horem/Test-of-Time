-- Insert SQL Rules Here 
DELETE FROM GameSpeeds WHERE Domain='StandardGameSpeeds' AND GameSpeedType= 'GAMESPEED_MARATHON';
DELETE FROM GameSpeeds WHERE Domain='StandardGameSpeeds' AND GameSpeedType= 'GAMESPEED_EPIC';
DELETE FROM GameSpeeds WHERE Domain='StandardGameSpeeds' AND GameSpeedType= 'GAMESPEED_STANDARD';
DELETE FROM GameSpeeds WHERE Domain='StandardGameSpeeds' AND GameSpeedType= 'GAMESPEED_QUICK';
DELETE FROM GameSpeeds WHERE Domain='StandardGameSpeeds' AND GameSpeedType= 'GAMESPEED_ONLINE';
