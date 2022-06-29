--[[
	Script Name	: SpawnScripts/Starcrest/VelderothMalraen.lua
	Script Purpose	: Velderoth Malraen 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

-- Quest ID's
local CONFRONTATION = 321

function spawn(NPC)
AddTimer(NPC, 5000, "EmoteLoop")    
    SetRequiredQuest(NPC, 321, 2, 1)
    SetRequiredQuest(NPC, 321, 3, 1)
    end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasQuest(Spawn, CONFRONTATION) and GetQuestStep(Spawn, CONFRONTATION) == 3 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/velderoth_malraen/qey_village02/quests/velderoth/velderoth000.mp3", "", "", 602755801, 4204317404, Spawn,4)
		AddConversationOption(conversation, "Believe it, heretic.", "dlg_55_3")
		StartConversation(conversation, NPC, Spawn, "I cannot believe you would destroy such knowledge!")
    else
 		PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	end
end

function dlg_55_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/velderoth_malraen/qey_village02/quests/velderoth/velderoth001.mp3", "", "scold", 4272504042, 2021431254, Spawn,4)
	AddConversationOption(conversation, "We know that it was meant for you, Velderoth.", "dlg_55_4")
	StartConversation(conversation, NPC, Spawn, "Hold your tongue, child. Insults will only serve to anger me.")
end

function dlg_55_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Except at this moment.")
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/velderoth_malraen/qey_village02/quests/velderoth/velderoth002.mp3", "", "", 4026578070, 2833635069, Spawn,4)
	StartConversation(conversation, NPC, Spawn, "Simpleton! If you don't seek knowledge then you are no Erudite! My power is greater than you know.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/velderoth_malraen/qey_village02/qst_velderoth_howcould_ea37cf7d.mp3", "NO!!! How could you do such a thing?", "", 4138921089, 741301826, Spawn)
--]]

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