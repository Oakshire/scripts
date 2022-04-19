--[[
	Script Name	: SpawnScripts/Castleview/WaitressBrooak.lua
	Script Purpose	: Waitress Brooak 
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
    if GetFactionAmount(Spawn,11) <0 then
        FactionChecking(NPC, Spawn, faction)
        else     
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/waitress_brooak/qey_village04/newbie_path_froglok/waitressbrooak004.mp3", "", "", 4277299826, 3957611159)
	AddConversationOption(conversation, "Perhaps later, gentle lady.")
	StartConversation(conversation, NPC, Spawn, "Care ye for a bog water spirit, kind traveler?  'Tis the specialty of the house!")
end
end