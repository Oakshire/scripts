--[[
    Script Name    : SpawnScripts/Commonlands/SergeantBorus.lua
    Script Author  : neatz09
    Script Date    : 2021.03.01 06:03:40
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
 SetPlayerProximityFunction(NPC, 10, "InRange")
end

function hailed(NPC, Spawn)
   	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I don't like the sound of that.")
	StartConversation(conversation, NPC, Spawn, "You look useful.  How about lending the Militia a hand? Or do you need a direct order handed down from the Overlord himself?")
	PlayFlavor(NPC, "voiceover/english/optional1/sergeant_borus/commonlands/quests/sergeant_borus/sergeant_borus001.mp3", "", "", 4199930878, 3636034359)
end



function InRange(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
 	PlayFlavor(NPC, "voiceover/english/optional1/sergeant_borus/commonlands/quest/025_quest_sergeant_borus_callout_7172904d.mp3", "You best watch your step out here!", "", 2964203478, 4275145223, Spawn)
end



function respawn(NPC)
spawn(NPC)
end

