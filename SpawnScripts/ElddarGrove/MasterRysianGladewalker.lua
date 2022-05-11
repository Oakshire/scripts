--[[
	Script Name	: SpawnScripts/ElddarGrove/MasterRysianGladewalker.lua
	Script Purpose	: Master Rysian Gladewalker 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Added quest dialogue - 2022.05.10 Dorbin
--]]

local report = 5531

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
if GetFactionAmount(Spawn, 11) <0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
    else
		PlayFlavor(NPC, "voiceover/english/optional1/master_rysian_gladewalker/qey_elddar/masterrysiangladewalker.mp3", "", "", 1008244051, 2607567948, Spawn)
    if GetQuestStep(Spawn,report)==1 then
	AddConversationOption(conversation, "Aye, Pathfinder Oakheart bid me deliver this report to you.", "Report")
    end
	AddConversationOption(conversation, "No, I'm sorry you must have me confused with someone else.", "dlg_16_1")
	StartConversation(conversation, NPC, Spawn, "Well met, friend!  Do you have business with our guild?")
end
end

 function Report(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)	
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Gladly.  I'll see he gets the message.", "FinishQuest")
	StartConversation(conversation, NPC, Spawn, "His daily perimeter report, I presume?  Good, I've been waiting on this.  Please inform Oakheart that I've received the report and will look forward to the next.")
end  

function FinishQuest(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,report, 1)
    end