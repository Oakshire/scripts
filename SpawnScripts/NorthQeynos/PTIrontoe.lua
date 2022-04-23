--[[
    Script Name    : SpawnScripts/NorthQeynos/PTIrontoe.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.10 03:10:35
    Script Purpose : 
                   : 
--]]

local TheMotleyMerchantManifest = 5368

function spawn(NPC)

end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/p.t._irontoe/qey_harbor/ptirontoe000.mp3", "", "glare", 63213082, 3865796457, Spawn)
    if GetQuestStep(Spawn, TheMotleyMerchantManifest) == 7 then
	AddConversationOption(conversation, "I believe you need to sign this manifest. ", "Option2")
	end
	AddConversationOption(conversation, "What's the P.T. stand for? ", "Option1")
	AddConversationOption(conversation, "I'm shoving off. Good day. ")
	StartConversation(conversation, NPC, Spawn, "Listen here! This here's my pub. We'll have no busting heads and barstools in here. And never break rule number one: Never pester the owner.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/p.t._irontoe/qey_harbor/ptirontoe002.mp3", "", "shake", 63213082, 3865796457, Spawn)
	AddConversationOption(conversation, "I'm leaving.")
	StartConversation(conversation, NPC, Spawn, "Pummeling time: The time it's gonna be if you don't stop pestering me. Shove off!")
end

function Option2(NPC, Spawn)
    SetStepComplete(Spawn, TheMotleyMerchantManifest, 7)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/p.t._irontoe/qey_harbor/ptirontoe001.mp3", "", "agree", 63213082, 3865796457, Spawn)
	AddConversationOption(conversation, "I am sure you'll get more now that you signed.")
	StartConversation(conversation, NPC, Spawn, "We're almost out of stout. The patrons will get riled up if we run dry. I hate losing coin. Make sure your associates get this grog, or they'll be getting a brigade beating from me personally.")
end




function respawn(NPC)
	spawn(NPC)
end