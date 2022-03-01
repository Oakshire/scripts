--[[
    Script Name    : SpawnScripts/Commonlands/TaskmastersAssistantKozma.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.23 10:02:54
    Script Purpose : 
                   : 
--]]

local FarSeasRequisitionWC124 = 5212
local FarSeasRequisitionWC002 = 5213
local FarSeasRequisitionWC154 = 5214
local FarSeasRequisitionWC077 = 5215
local FarSeasRequisitionWC045 = 5216
local FarSeasRequisitionFG016 = 5240
local FarSeasRequisitionFG073 = 5241
local FarSeasRequisitionFG158 = 5242
local FarSeasRequisitionFG212 = 5243
local FarSeasRequisitionFG244 = 5244

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function InRange(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/taskmaster_s_assistant_koz_ma/commonlands/quest/015_taskmaster_assistant_kozma_qst_callout_b3f14a2b.mp3", "Bring your FSR's to me.  If you don't have them, then I don't want to talk to you.", "", 2096341840, 1469770936, Spawn)
end



function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/taskmaster_s_assistant_koz_ma/commonlands/quests/taskmaster/assistant_kozma001.mp3", "", "", 1822760720, 2300113695, Spawn)
	AddConversationOption(conversation, "What requisition?", "Option1")
	if GetQuestStep(Spawn, FarSeasRequisitionWC124) == 2 then
	AddConversationOption(conversation, "I have requisition # WC 124", "COMPLETE")
	elseif GetQuestStep(Spawn, FarSeasRequisitionWC002) == 5 then
	AddConversationOption(conversation, "I have requisition # WC 002", "COMPLETE")
    elseif GetQuestStep(Spawn, FarSeasRequisitionWC154) == 2 then
    AddConversationOption(conversation, "I have requisition # WC 154", "COMPLETE")
    elseif GetQuestStep(Spawn, FarSeasRequisitionWC077) == 3 then
     AddConversationOption(conversation, "I have requisition # WC 077", "COMPLETE") 
    elseif GetQuestStep(Spawn, FarSeasRequisitionWC045) == 2 then
     AddConversationOption(conversation, "I have requisition # WC 045", "COMPLETE")
   elseif GetQuestStep(Spawn,  FarSeasRequisitionFG016) == 4 then
        AddConversationOption(conversation, "I have requisition # FG 016", "COMPLETE")
     elseif GetQuestStep(Spawn,  FarSeasRequisitionFG073) == 3 then
        AddConversationOption(conversation, "I have requisition # FG 073", "COMPLETE")
         elseif GetQuestStep(Spawn,  FarSeasRequisitionFG158) == 3 then
        AddConversationOption(conversation, "I have requisition # FG 158", "COMPLETE") 
             elseif GetQuestStep(Spawn,  FarSeasRequisitionFG212) == 2 then
        AddConversationOption(conversation, "I have requisition # FG 212", "COMPLETE")   
                     elseif GetQuestStep(Spawn,  FarSeasRequisitionFG244) == 2 then
        AddConversationOption(conversation, "I have requisition # FG 244", "COMPLETE")  
    end
	AddConversationOption(conversation, "Then I'll leave.")
	StartConversation(conversation, NPC, Spawn, "Where's your requisition? Only those who filled requisitions should speak to me.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/taskmaster_s_assistant_koz_ma/commonlands/quests/taskmaster/assistant_kozma002.mp3", "", "", 4246141797, 1251397983, Spawn) 
	AddConversationOption(conversation, "I can be a huntsman.", "Option2")
	AddConversationOption(conversation, "Thanks for the heads up.")
	StartConversation(conversation, NPC, Spawn, "Why are you wasting my time? The Far Seas Trading Company pays huntsmen to track down various items and beasts. Sometimes the huntsmen inadvertently feed the beasts and never return. Too bad ... for them.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/taskmaster_s_assistant_koz_ma/commonlands/quests/taskmaster/assistant_kozma003.mp3", "", "", 1400846330, 1112489501, Spawn )
	AddConversationOption(conversation, "I got it, thanks.")
	StartConversation(conversation, NPC, Spawn, "No! No, no, no! We have plenty of huntsmen!  No more huntsmen! And that means you!  Okay?  Got it?  ... That is, unless of course, you happen to find an unfilled order. Get it?")
end

function COMPLETE(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/taskmaster_s_assistant_koz_ma/commonlands/quests/taskmaster/assistant_kozma004.mp3", "", "", 1286861813, 2432767981, Spawn)
	if GetQuestStep(Spawn, FarSeasRequisitionWC124) == 2 then
	SetStepComplete(Spawn, FarSeasRequisitionWC124, 2)
	elseif GetQuestStep(Spawn, FarSeasRequisitionWC002) == 5 then
	SetStepComplete(Spawn, FarSeasRequisitionWC002, 5)
	elseif 	GetQuestStep(Spawn, FarSeasRequisitionWC154) == 2 then
	SetStepComplete(Spawn, FarSeasRequisitionWC154, 2)
	elseif GetQuestStep(Spawn, FarSeasRequisitionWC077) == 3 then
	SetStepComplete(Spawn, FarSeasRequisitionWC077, 3)
	elseif GetQuestStep(Spawn, FarSeasRequisitionWC045) == 2 then
	SetStepComplete(Spawn, FarSeasRequisitionWC045, 2)
	elseif GetQuestStep(Spawn, FarSeasRequisitionFG016) == 4 then
	SetStepComplete(Spawn, FarSeasRequisitionFG016, 4)
		elseif GetQuestStep(Spawn, FarSeasRequisitionFG073) == 3 then
	SetStepComplete(Spawn, FarSeasRequisitionFG073, 3)
	elseif GetQuestStep(Spawn, FarSeasRequisitionFG158) == 3 then
	SetStepComplete(Spawn, FarSeasRequisitionFG158, 3)
		elseif GetQuestStep(Spawn, FarSeasRequisitionFG212) == 2 then
	SetStepComplete(Spawn, FarSeasRequisitionFG212, 2)
			elseif GetQuestStep(Spawn, FarSeasRequisitionFG244) == 2 then
	SetStepComplete(Spawn, FarSeasRequisitionFG244, 2)
	AddConversationOption(conversation, "Okay.")
	StartConversation(conversation, NPC, Spawn, "Lets me see ... Yes, yes! Here we are. This order is overdue, and the Far Seas Trading Company never pays full price for late orders. Consider yourself lucky that you get paid at all.  Thank you, come again.")
end
   end




function respawn(NPC)
spawn(NPC)
end

