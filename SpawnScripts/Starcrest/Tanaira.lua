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
local HailCheck = false

function spawn(NPC)
    ProvidesQuest(NPC,5605)
AddTimer(NPC, 5000, "EmoteLoop")
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
    PlayFlavor(NPC,"","","noway",0,0,Spawn)
else
HailCheck = true
AddTimer(NPC,32000,"HailReset")
SetTarget(NPC,Spawn)
Dialog1(NPC, Spawn)
end
end

function HailReset(NPC)
    HailCheck = false
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
    if not HasQuest(Spawn, 5605)and not HasCompletedQuest(Spawn,5605) then
	Dialog.AddOption("He does seem fairly preoccupied.  Have you gone to talk to him?","Dialog3")
    end       
    if GetQuestStep(Spawn, 5605) == 2 then
	Dialog.AddOption("I've completed the map to the picnic spot.  Just past the Clearwater Pond you follow the stream.  You'll find the waterfall near the cliff surrounded by frogs.","Delivered")
    end        
	Dialog.AddOption("I am just browsing.  I'll let you get back to daydreaming. ")
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

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "sigh", 0, 0, Spawn)
	Dialog.AddDialog("I know.  He's always so busy selling he doesn't get any time to relax.  I would like to take him on a picnic but I don't know of any good spots.  I heard Oakmyst Forest has a very good spot but I haven't been able to see the area for myself.  Would you do me a favor and find this spot for me?")
	Dialog.AddVoiceover("voiceover/english/merchant_tanaira/qey_village02/merchanttanaira000.mp3", 3232265570, 2678677300)
	Dialog.AddOption("I could head that way and check out scenic spots for a picnic.", "QuestBegin")
	Dialog.AddOption("Trapsing through the forest doesn't sound ideal to me.  I'd rather not.")
	Dialog.Start()
end

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, 5605)
end

function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    SetStepComplete(Spawn, 5605, 2)
    PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
	Dialog.AddDialog("Thank you so much!  This map looks great.  Now, I just need to ask Grekin about that picnic.")
	Dialog.AddVoiceover("voiceover/english/merchant_tanaira/qey_village02/merchanttanaira002.mp3", 702642153, 3039622281)
	Dialog.AddOption("Best of luck to you both.")
	Dialog.Start()
end

function EmoteLoop(NPC)
    if HailCheck == true then
     local Grekin = GetSpawn(NPC, 2340037)	-- Get Grekin
    if Grekin ~= nil then
        SetTarget(NPC,Grekin)
    end
    AddTimer(NPC,26100,"EmoteLoop")
    else
    local emoteChoice = MakeRandomInt(1,6)

    if emoteChoice == 1 then
-- doubletake
        PlayAnimation(NPC, 11415)
        AddTimer(NPC, MakeRandomInt(11000,12000), "EmoteLoop")	
    elseif emoteChoice == 2 then
-- smirk
        PlayAnimation(NPC, 12286)
        AddTimer(NPC, MakeRandomInt(6000,8000), "EmoteLoop")	
    
    elseif emoteChoice == 3 then
-- peer
        PlayAnimation(NPC, 11976)
        AddTimer(NPC, MakeRandomInt(12000,14000), "EmoteLoop")	
    
    elseif emoteChoice == 4 then
-- sigh
        PlayAnimation(NPC, 12246)
        AddTimer(NPC, MakeRandomInt(8000,9000), "EmoteLoop")	

    elseif emoteChoice == 5 then
-- ponder
        PlayAnimation(NPC, 12030)
        AddTimer(NPC, MakeRandomInt(12000,13500), "EmoteLoop")	
    elseif emoteChoice == 6 then
-- peer x2
        PlayAnimation(NPC, 11976)
        AddTimer(NPC, MakeRandomInt(12000,14000), "EmoteLoop")	
    end
end
end