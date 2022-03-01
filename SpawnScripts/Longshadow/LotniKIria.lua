--[[
	Script Name	: SpawnScripts/Longshadow/LotniKIria.lua
	Script Purpose	: Lotni K`Iria 
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/lotni_k_iria/fprt_hood05/100_std_de_female_lotni_kiria_callout_462c415.mp3", "Another refugee... What do YOU want, peasant?", "", 1297124107, 2736745015, Spawn)
end