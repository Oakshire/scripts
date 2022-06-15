--[[
	Script Name	: SpawnScripts/QeynosHarbor/BordenMannus.lua
	Script Purpose	: Borden Mannus <Bartender>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local TheMotleyMerchantManifest = 5368

function spawn(NPC)
AddTimer(NPC, 5000, "EmoteLoop")    
end

function respawn(NPC)
	spawn(NPC)
end



function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
--		PlayFlavor(NPC, "voiceover/english/optional5/bartender_borden_mannus/qey_harbor/bartenderbordenmannus000.mp3", "", "no", 2826547781, 426489100, Spawn)
		PlayVoice(NPC, "voiceover/english/optional5/bartender_borden_mannus/qey_harbor/bartenderbordenmannus000.mp3", 2826547781, 426489100, Spawn)
		if GetQuestStep(Spawn, TheMotleyMerchantManifest) == 6 then
		AddConversationOption(conversation, "I believe you need to sign this manifest. ", "Option1")
		end
		AddConversationOption(conversation, "I'm sorry. I took a wrong turn. Farewell.")
	    StartConversation(conversation, NPC, Spawn, "Listen here,  this ain't no public brew hall! The Mermaid's Lure is for Marauders only. ")
end


function Option1(NPC, Spawn)
    SetStepComplete(Spawn, TheMotleyMerchantManifest, 6)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/bartender_borden_mannus/qey_harbor/bartenderbordenmannus001.mp3", "", "no", 1252970025, 1302679726, Spawn)
	AddConversationOption(conversation, "Hey! I am only the messenger.")
	StartConversation(conversation, NPC, Spawn, "It's one of you! If it wasn't for the Captain's love of this froth, we woulda' run you out of this city just like it was the Age of Turmoil!")
end

function EmoteLoop(NPC)
    local emoteChoice = MakeRandomInt(1,3)

    if emoteChoice == 1 then
-- ponder
        PlayAnimation(NPC, 12030)
        AddTimer(NPC, MakeRandomInt(15000,18000), "EmoteLoop")	
    elseif emoteChoice == 2 then
-- sniff
        PlayAnimation(NPC, 12329)
        AddTimer(NPC, MakeRandomInt(6000,9000), "EmoteLoop")	
    else
-- tapfoot
        PlayAnimation(NPC, 13056)
        AddTimer(NPC, MakeRandomInt(15000,18000), "EmoteLoop")	
    end
end