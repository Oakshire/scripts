--[[
	Script Name	: SpawnScripts/QeynosHarbor/GrisvaneStonearm.lua
	Script Purpose	: Grisvane Stonearm <Banker>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Added quest dialogue/VO - 2022.05.08 Dorbin
--]]
local deposit = 5523

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/banker_grisvane_stonearm/qey_harbor/bankergrisvanestonearm.mp3", "", "", 2372742156, 2861930894, Spawn)
    if GetQuestStep(Spawn,deposit)==1 then
		AddConversationOption(conversation, "I'm here to make a deposit for Nightbow, the owner of In-Range.", "Delivered")
    end
		AddConversationOption(conversation, "Thanks, that's good to know.", "dlg_27_1")
	StartConversation(conversation, NPC, Spawn, "Hello there.  I'll take care of your coin and goods if they need safekeeping.")
end

 function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/banker_grisvane_stonearm/qey_harbor/bankergrisvanestonearm000.mp3", "", "ponder", 959700799, 1039182816, Spawn)	
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Thank you.", "FinishQuest")
	StartConversation(conversation, NPC, Spawn, "Well then why didn't you just say so.  Miss Nightbow is always first on my list!  Let's see what we have here... hrmm- excellent!  I'm glad to see she's done well this week!  I can't say the same for last week.  Let me write a recipt.  I know she'll want one... Here you are!  Good day.  ")
end  

function FinishQuest(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,deposit, 1)
    end

