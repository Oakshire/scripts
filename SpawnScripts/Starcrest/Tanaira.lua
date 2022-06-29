--[[
	Script Name	: SpawnScripts/Starcrest/Tanaira.lua
	Script Purpose	: Tanaira <Provisioner>
	Script Author	: Dorbin
	Script Date	: 06.282022
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
require "SpawnScripts/Generic/DialogModule"

local FAR_SEAS_DR_PBG0162_QUEST_ID = 515
local FAR_SEAS_DR_PBG0295_QUEST_ID = 516

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
    PlayFlavor(NPC,"","","noway",0,0,Spawn)
    else
Dialog1(NPC, Spawn)
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, hello! Sorry, I didn't see you.  My eyes tend to wander towards Grekin over there.")
    PlayFlavor(NPC,"","","hello",0,0,Spawn)
	Dialog.AddVoiceover("voiceover/english/merchant_tanaira/qey_village02/merchanttanaira.mp3", 2005566825, 1356521608)
	if HasQuest(Spawn, FAR_SEAS_DR_PBG0162_QUEST_ID) and GetQuestStep(Spawn, FAR_SEAS_DR_PBG0162_QUEST_ID) == 2 or HasQuest(Spawn, FAR_SEAS_DR_PBG0295_QUEST_ID) and GetQuestStep(Spawn, FAR_SEAS_DR_PBG0295_QUEST_ID) == 3 then
	Dialog.AddOption("I have Far Seas Trading Requisition order PBG0162. ", "Dialog2")
    end
	Dialog.AddOption("I am just browsing.  I'll let you get back to daydreaming.  ")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	if HasQuest(Spawn, FAR_SEAS_DR_PBG0162_QUEST_ID) and GetQuestStep(Spawn, FAR_SEAS_DR_PBG0162_QUEST_ID) == 2 then
		SetStepComplete(Spawn, FAR_SEAS_DR_PBG0162_QUEST_ID, 2)
	end
	if HasQuest(Spawn, FAR_SEAS_DR_PBG0295_QUEST_ID) and GetQuestStep(Spawn, FAR_SEAS_DR_PBG0295_QUEST_ID) == 3 then
		SetStepComplete(Spawn, FAR_SEAS_DR_PBG0295_QUEST_ID, 3)
	end
    PlayFlavor(NPC,"","","boggle",0,0,Spawn)
	Dialog.AddDialog("Oh!  Grekin has occupied so much of my thoughts that I forgot about this requisition I placed weeks ago.  I may have forgotten but I am glad you did not.")
	Dialog.AddVoiceover("voiceover/english/merchant_tanaira/qey_village02/merchanttanaira003.mp3", 1432585003, 855405461)
	Dialog.AddOption("Just doing my job. ")
	Dialog.Start()
end

