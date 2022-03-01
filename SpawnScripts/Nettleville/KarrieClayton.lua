--[[
	Script Name	: SpawnScripts/Nettleville/KarrieClayton.lua
	Script Purpose	: Karrie Clayton 
	Script Author	: Scatman
	Script Date	: 2009.08.08
	Script Notes	: 
--]]

function spawn(NPC)
	--AddVisualStateLoop(NPC, 2, 10, 11298)
	--AddVisualStateLoop(NPC, 2, 10, 11557)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/karrie_clayton/qey_village01/karrieclayton.mp3", "", "", 1984155043, 1707628406, Spawn)
	AddConversationOption(conversation, "I'm sorry.  Excuse me for interrupting your performance.")
	StartConversation(conversation, NPC, Spawn, "Oh my!  Yet another overzealous admirer. Please wait till after the show for autographs.")
end