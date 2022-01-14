-- Init Game Values:
WINDOW_WIDTH	= 1280
WINDOW_HEIGHT	= 720

VIRTUAL_WIDTH	= 432
VIRTUAL_HEIGHT	= 243

GameState = {
	START		= 0,
	GAME		= 1,
	P1_SERVE	= 2,
	P2_SERVE	= 3
}

PowerUpState = {

	NORMAL		= 0,
	SPEED		= 1,
	P1_SLOW		= 2,
	P2_SLOW		= 3,
	P1_INVISI	= 4,
	P2_INVISI	= 5

}

-- abstracting this out since this is a resource file
--font values
GAME_FONT		= 'font.ttf'
FONT_SMALL		= 8
FONT_MED		= 16 
FONT_LARGE		= 32
--images
POWERUP_IMAGE	= "powerup.png"

--Gameplay values
PADDLE_SPEED	= 200
POWER_UP_TIMER	= 200 
POWER_UP_ACTIVE = 0