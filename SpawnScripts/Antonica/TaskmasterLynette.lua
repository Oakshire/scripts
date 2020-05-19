--[[
	Script Name	: SpawnScripts/Antonica/TaskmasterLynette.lua
	Script Purpose	: Taskmaster Lynette 
	Script Author	: geordie0511
	Script Date	: 2019.03.19
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local A1 = 474
local A2 = 475
local A3 = 476
local A4 = 477
local A5 = 478
local A6 = 479
local A7 = 480
local A8 = 481
local A9 = 482
local A10 = 483

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

	PlayFlavor(NPC, "voiceover/english/taskmaster_lynette/qey_harbor/taskmasterlynette000.mp3", "", "", 2422547870, 3187249838, Spawn)
	if GetQuestStep(Spawn, A1) == 4 then
		AddConversationOption(conversation, "I won't bother you then.")
		AddConversationOption(conversation, "What is a Far Seas Requisition?", "dlg_3_1")
		AddConversationOption(conversation, "I have filled requisition ANT0221.", "dlg_4_1")
		StartConversation(conversation, NPC, Spawn, "Unless you're filling a Far Seas Requisition of Antonica I do not have time for you. Time is money.")
	elseif GetQuestStep(Spawn, A2) == 3 then
		AddConversationOption(conversation, "I won't bother you then.")
		AddConversationOption(conversation, "What is a Far Seas Requisition?", "dlg_3_1")
		AddConversationOption(conversation, "I have filled requisition ANT0229.", "dlg_4_1")
		StartConversation(conversation, NPC, Spawn, "Unless you're filling a Far Seas Requisition of Antonica I do not have time for you. Time is money.")
	elseif GetQuestStep(Spawn, A3) == 4 then
		AddConversationOption(conversation, "I won't bother you then.")
		AddConversationOption(conversation, "What is a Far Seas Requisition?", "dlg_3_1")
		AddConversationOption(conversation, "I have filled requisition ANT0235.", "dlg_4_1")
		StartConversation(conversation, NPC, Spawn, "Unless you're filling a Far Seas Requisition of Antonica I do not have time for you. Time is money.")
	elseif GetQuestStep(Spawn, A4) == 2 then
		AddConversationOption(conversation, "I won't bother you then.")
		AddConversationOption(conversation, "What is a Far Seas Requisition?", "dlg_3_1")
		AddConversationOption(conversation, "I have filled requisition ANT0243.", "dlg_4_1")
		StartConversation(conversation, NPC, Spawn, "Unless you're filling a Far Seas Requisition of Antonica I do not have time for you. Time is money.")
	elseif GetQuestStep(Spawn, A5) == 2 then
		AddConversationOption(conversation, "I won't bother you then.")
		AddConversationOption(conversation, "What is a Far Seas Requisition?", "dlg_3_1")
		AddConversationOption(conversation, "I have filled requisition ANT0244.", "dlg_4_1")
		StartConversation(conversation, NPC, Spawn, "Unless you're filling a Far Seas Requisition of Antonica I do not have time for you. Time is money.")
	elseif GetQuestStep(Spawn, A6) == 3 then
		AddConversationOption(conversation, "I won't bother you then.")
		AddConversationOption(conversation, "What is a Far Seas Requisition?", "dlg_3_1")
		AddConversationOption(conversation, "I have filled requisition ANT0351.", "dlg_4_1")
		StartConversation(conversation, NPC, Spawn, "Unless you're filling a Far Seas Requisition of Antonica I do not have time for you. Time is money.")
	elseif GetQuestStep(Spawn, A7) == 3 then
		AddConversationOption(conversation, "I won't bother you then.")
		AddConversationOption(conversation, "What is a Far Seas Requisition?", "dlg_3_1")
		AddConversationOption(conversation, "I have filled requisition ANT037.", "dlg_4_1")
		StartConversation(conversation, NPC, Spawn, "Unless you're filling a Far Seas Requisition of Antonica I do not have time for you. Time is money.")
	elseif GetQuestStep(Spawn, A8) == 3 then
		AddConversationOption(conversation, "I won't bother you then.")
		AddConversationOption(conversation, "What is a Far Seas Requisition?", "dlg_3_1")
		AddConversationOption(conversation, "I have filled requisition ANT0424.", "dlg_4_1")
		StartConversation(conversation, NPC, Spawn, "Unless you're filling a Far Seas Requisition of Antonica I do not have time for you. Time is money.")
	elseif GetQuestStep(Spawn, A9) == 3 then
		AddConversationOption(conversation, "I won't bother you then.")
		AddConversationOption(conversation, "What is a Far Seas Requisition?", "dlg_3_1")
		AddConversationOption(conversation, "I have filled requisition ANT0437.", "dlg_4_1")
		StartConversation(conversation, NPC, Spawn, "Unless you're filling a Far Seas Requisition of Antonica I do not have time for you. Time is money.")
	elseif GetQuestStep(Spawn, A10) == 2 then
		AddConversationOption(conversation, "I won't bother you then.")
		AddConversationOption(conversation, "What is a Far Seas Requisition?", "dlg_3_1")
		AddConversationOption(conversation, "I have filled requisition ANT0724.", "dlg_4_1")
		StartConversation(conversation, NPC, Spawn, "Unless you're filling a Far Seas Requisition of Antonica I do not have time for you. Time is money.")
	else 
		AddConversationOption(conversation, "I won't bother you then.")
		AddConversationOption(conversation, "What is a Far Seas Requisition?", "dlg_3_1")
		StartConversation(conversation, NPC, Spawn, "Unless you're filling a Far Seas Requisition of Antonica I do not have time for you. Time is money.")
	end
end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/taskmaster_lynette/qey_harbor/taskmasterlynette003.mp3", "", "", 2958849260, 4083022013, Spawn)
	AddConversationOption(conversation, "It's a pleasure doing business with the Far Seas Trading Company.")
	StartConversation(conversation, NPC, Spawn, "This order is overdue!  Our policy clearly states that the Far Seas Trading Company does not pay full price for late requisitions.  Wait... I see that you are not the huntsman who was issued the order. That means I'll have to file a change of vendor form. Still, you've filled the order and that deserves compensation.  Perhaps someday we'll add you to our list of independent contractors. ")
	if GetQuestStep(Spawn, A1) == 4 then
		SetStepComplete(Spawn, A1, 4)	
	elseif GetQuestStep(Spawn, A2) == 3 then
		SetStepComplete(Spawn, A2, 3)	
	elseif GetQuestStep(Spawn, A3) == 4 then
		SetStepComplete(Spawn, A3, 4)	
	elseif GetQuestStep(Spawn, A4) == 2 then
		SetStepComplete(Spawn, A4, 2)	
	elseif GetQuestStep(Spawn, A5) == 2 then
		SetStepComplete(Spawn, A5, 2)	
	elseif GetQuestStep(Spawn, A6) == 3 then
		SetStepComplete(Spawn, A6, 3)	
	elseif GetQuestStep(Spawn, A7) == 3 then
		SetStepComplete(Spawn, A7, 3)	
	elseif GetQuestStep(Spawn, A8) == 3 then
		SetStepComplete(Spawn, A8, 3)	
	elseif GetQuestStep(Spawn, A9) == 3 then
		SetStepComplete(Spawn, A9, 3)	
	elseif GetQuestStep(Spawn, A10) == 2 then
		SetStepComplete(Spawn, A10, 2)	
	end
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/taskmaster_lynette/qey_harbor/taskmasterlynette001.mp3", "", "", 4078840595, 1358943922, Spawn)
	AddConversationOption(conversation, "Thanks for the information. ")
	AddConversationOption(conversation, "Hire me as your huntsman. ", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "The Far Seas Trading Company pays huntsmen to gather hides.  We issue a requisition order for the kind of hide we wish to buy. The huntsman takes the order and brings us the hides. We pay the huntsman for the hides; if he doesn't return, we don't pay him.  For legal purposes, the huntsman is considered a consultant for the Far Seas Trading Company and not a full-time employee; therefore, we assume no liability for the actions, expenses, or injuries of the consultant. ")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/taskmaster_lynette/qey_harbor/taskmasterlynette002.mp3", "", "", 3001837794, 1766542530, Spawn)
	AddConversationOption(conversation, "Good day to you. ")
	StartConversation(conversation, NPC, Spawn, "This is the office for processing requisition orders, not the office for employment. We have more than enough huntsmen on staff.  So, unless you happen to find an unclaimed Far Seas Requisition and fill its order... our business is done.  Good day. Next!")
end