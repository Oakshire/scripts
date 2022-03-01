--[[
    Script Name    : SpawnScripts/Commonlands/aparchednomad.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.17 07:05:51
    Script Purpose : 
                   : 
--]]

local FarFromHome = 5223

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetQuestStep(Spawn, FarFromHome) == 1 then
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Very well, thank you. I might have something that could brighten your day out here under the hot sun.", "Option1")
	StartConversation(conversation, NPC, Spawn, "Sure is a hot one today. How do you fare, traveler?")
	else
	PlayFlavor(NPC, "", "Hello again! The water was wonderful, hit the spot.", "hail", 0, 0, Spawn)
end
end


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Madam Vi sent me out from the Crossroads to find you. Here, have some water. You look thirsty.", "Option2")
	StartConversation(conversation, NPC, Spawn, "Oh really? What might that be?")
end


function Option2(NPC, Spawn)
    SetStepComplete(Spawn, FarFromHome, 1)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "My pleasure.")
	StartConversation(conversation, NPC, Spawn, "Oh excellent! Just what the doctor ordered, so to speak. The others will appreciate this also. The Crossroads, you say? I think we can get word to her there. Thank you again for you kindness.")
end


function respawn(NPC)
	spawn(NPC)
end