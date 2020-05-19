--[[
	Script Name	: SpawnScripts/Darklight/anuntamedspirit_female.lua
	Script Purpose	: an untamed spirit 
	Script Author	: John Adams
	Script Date	: 2009.02.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function death(NPC, Spawn)
	rand = math.random(0, 100)
	if rand <= 20 then
		choice = math.random(1, 2)
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/ghost_darkelf_base_1/ft/ghost/ghost_darkelf_base_1_1_death_gf_b5958785.mp3", "Hold them and I'll return with others like us!", "", 3769472925, 2964757475, Spawn)
		else
			Say(NPC, "The others will be back for you.", Spawn)
		end
	end
end

