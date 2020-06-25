--[[
	Script Name		:	TrainingDummy.lua
	Script Purpose	:	An unkillable spawn for you to whack on
	Script Author	:	Jabantiz
	Script Date		:	7/14/2014
	Script Notes	:	None
--]]

function spawn(NPC)
	-- set the calls to the ai to 10 mins as there is no ai
	SetBrainTick(NPC, 600000)
	SetLuaBrain(NPC)
	
	-- give the spawn a crap load of hp so we can't one hit kill
	SetHP(NPC, 1000000)
end

function hailed(NPC, Spawn)
	Say(NPC, GetHP(NPC))
end

function respawn(NPC)
	spawn(NPC)
end

function Think(NPC)
	-- no ai so won't attack
	return
end

function healthchanged(NPC, Spawn)
	-- insta heal so should be impossible to kill without the /kill command
	SetHP(NPC, GetMaxHP(NPC))
end