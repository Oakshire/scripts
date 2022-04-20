--[[
	Script Name	: SpawnScripts/Castleview/DolthyryrHelyanwe.lua
	Script Purpose	: Dolthyryr Helyanwe 
	Script Author	: Scatman
	Script Date	: 2009.10.03
	Script Notes	: 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
        FactionChecking(NPC, Spawn, faction)
        else  		
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/dolthyryr_helyanwe/qey_village04/newbie_path_froglok/dolthyryrhelyanwe004.mp3", "", "", 848573287, 2779070481)
	AddConversationOption(conversation, "Indeed, for at least those within the walls.")
	AddConversationOption(conversation, "Rather beautiful, I would agree.")
	StartConversation(conversation, NPC, Spawn, "Another glorious day in the city of Qeynos, wouldn't you agree?")
end
end