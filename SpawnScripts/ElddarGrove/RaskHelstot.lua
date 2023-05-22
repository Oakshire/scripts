--[[
	Script Name	: SpawnScripts/ElddarGrove/RaskHelstot.lua
	Script Purpose	: Rask Helstot 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/optional1/rask_helstot/qey_elddar/raskhelstot000.mp3", "", "", 2809197179, 4166706387, Spawn)
	AddConversationOption(conversation, "Trees... bah. ", "dlg_19_1")
	StartConversation(conversation, NPC, Spawn, "Though it's the only remaining tree of its kind, the Elddar grows ever larger.  Perhaps a symbol of Qeynos and her people even more fitting than the Claymore itself.")

end

--[[ raw_conversations
	PlayFlavor(NPC, "", "Welcome to the Elddar grove, young one.  Enjoy the shelter which the trees provide.", "", 1689589577, 4560189, Spawn)
--]]

