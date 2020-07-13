--[[
	Script Name		:	SpawnScripts/Freeport/BrucciusCapito.lua
	Script Purpose	:	
	Script Author	:	premierio015
	Script Date		:	2020.04.10
	Script Notes	:	
--]]

function spawn(NPC)
        
end

function respawn(NPC)
         
end

function hailed(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/optional1/bruccius_capito/fprt_east/qst_brucciuscapito.mp3", "", "", 2213419422, 824549942, Spawn)
AddConversationOption(conversation, "I must meet someone soon and must be going.  Good day.")
StartConversation(conversation, NPC, Spawn, "Helloo there!  Can you feel it?  The wind is changing direction....")
end