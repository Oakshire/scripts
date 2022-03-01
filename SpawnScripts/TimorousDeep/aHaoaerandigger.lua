--[[
	Script Name	: SpawnScripts/TimorousDeep/aHaoaerandigger.lua
	Script Purpose	: a Haoaeran digger 
	Script Author	: John Adams
	Script Date	: 2009.03.03
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	AddTimer(NPC, math.random(2000, 4000), "turn_mine_on")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function aggro(NPC, Spawn)
	chance = math.random(1, 100)
	if chance <= 20 then
		PlayFlavor(NPC, "voiceover/english/rok_combat_vo/a_spiroc/ft/_exp04/aviak/spiroc_garbled_1988c4de.mp3", "Brawk!  Rawk!", "", 200443481, 961836400, Spawn)
	end
end

function turn_mine_on(NPC)
	SpawnSet(NPC, "visual_state", 10783)
	AddTimer(NPC, 1000, "turn_mine_off")
end

function turn_mine_off(NPC)
	SpawnSet(NPC, "visual_state", 0)
	AddTimer(NPC, math.random(2000, 4000), "turn_mine_on")
end