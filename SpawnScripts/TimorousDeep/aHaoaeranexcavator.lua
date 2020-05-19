--[[
	Script Name	: SpawnScripts/TimorousDeep/aHaoaeranexcavator.lua
	Script Purpose	: a Haoaeran excavator 
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
		choice = math.random(1, 2)
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/rok_combat_vo/a_spiroc/ft/_exp04/aviak/spiroc_garbled_1988c4de.mp3", "Brawk!  Rawk!", "", 200443481, 961836400, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/rok_combat_vo/spiroc2/ft/_exp04/aviak/spiroc2_garbled_bfd1be1e.mp3", "Reet! Mock! Terock!", "", 2487641475, 3623989736, Spawn)
		end
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