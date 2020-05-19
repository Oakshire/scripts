--[[
	Script Name	: SpawnScripts/Generic/BrokentuskVoiceOvers.lua
	Script Purpose	: Handles voice overs for the Brokentusk.
	Script Author	: Scatman
	Script Date	: 2009.08.20
	Script Notes	: 
--]]

function generic_aggro(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/optional3/orc_brokentusk/ft/orc/orc_brokentusk_1_aggro_58aa3cd6.mp3", "Everyone, over here. Kill them and take their boots!", "", 434487644, 2328686578)
end

function generic_healthchanged(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/optional3/orc_brokentusk/ft/orc/orc_brokentusk_1_battle_m_15e66010.mp3", "I think we should just run!", "", 1889420114, 3820789621)
end

function generic_killed(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/optional3/orc_brokentusk/ft/orc/orc_brokentusk_1_victory_bfb0a7a3.mp3", "All of this stuff is mine!", "", 4284515986, 2571034270)
end

function generic_death(NPC, Spawn)
end

--[[
PlayFlavor(NPC, "voiceover/english/optional3/orc_brokentusk/ft/orc/orc_brokentusk_1_garbled_0.mp3", "", "", 3549344355, 3906322090, Spawn)
--]]
