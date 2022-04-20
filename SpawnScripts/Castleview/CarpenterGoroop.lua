--[[
	Script Name	: SpawnScripts/Castleview/CarpenterGoroop.lua
	Script Purpose	: Carpenter Goroop <Bowyer>
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

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/carpenter_goroop/qey_village04/newbie_path_froglok/carpentergoroop007.mp3", "", "", 437901215, 87177442)
	AddConversationOption(conversation, "Indeed.  I hope you enjoy it!")
	AddConversationOption(conversation, "I have no time to talk, as I am on a task.")
	StartConversation(conversation, NPC, Spawn, "Hail!  'Tis a great day!")
    end
end