--[[
	Script Name	: SpawnScripts/Starcrest/ZentomaronCroosinaden.lua
	Script Purpose	: Zentomaron Croosinaden 
	Script Author	: Dorbin
	Script Date	: 07.03.2022
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
    ProvidesQuest(NPC,5604)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
else
    if not HasQuest(Spawn, 5604) and not HasCompletedQuest(Spawn,5604)then
	local chance = math.random(0, 100)
	if chance <= 80 then
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1,2)
	if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/zentomaron_croosinaden/qey_village02/100_tavernpatron_erud_m_callout_4b9d4e4a.mp3", "Adventurer!  Come and help settle this dispute!", "beckon", 2771038017, 2425816337, Spawn)
 	elseif choice == 2 then
 	PlayFlavor(NPC, "voiceover/english/optional4/zentomaron_croosinaden/zentomaron_multhail1-mp3.mp3", "Hmm ... you appear no more knowledgeable than this silly human we've collared.  Oh well.", "", 4235005010, 394337117, Spawn)
    end
    end
    end
end
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
else
    if  HasCompletedQuest(Spawn,5604)then
 	PlayFlavor(NPC, "voiceover/english/optional4/zentomaron_croosinaden/zentomaron_multhail1-mp3.mp3", "Hmm ... you appear no more knowledgeable than this silly human we've collared.  Oh well.", "", 4235005010, 394337117, Spawn)
    else
    Dialog1(NPC, Spawn)
    end
end
end


function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
	Dialog.AddDialog("Is it not apparent that I am engaged at the momment discussing important matters with Farnsbey here?")
	Dialog.AddVoiceover("voiceover/english/zentomaron_croosinaden/qey_village02/zentomaroncroosinaden.mp3", 2680006055, 3138388390)
 	if not HasCompletedQuest (Spawn, 5604) and not HasQuest (Spawn, 5604) then 
	Dialog.AddOption("What could Farnsbey have done to make you so concerned?","Dialog2")
    end
    if GetQuestStep (Spawn, 5604)==2 then 
	Dialog.AddOption("Varion said he knows of the scroll you're looking for but he doesn't have it.  He also said to lay off his nephew.","Delivered")
    end
    Dialog.AddOption("Sorry.  I was just passing through.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
	Dialog.AddDialog("Farnsbey has the audacity to deny the academic community the whereabouts of a scroll that posesses lore long pursued by our people! The sage Varion in Nettleville had denied me further access to shop where the scroll possibly lay!")
	Dialog.AddVoiceover("voiceover/english/zentomaron_croosinaden/qey_village02/zentomaroncroosinaden000.mp3", 1712159485, 1929661255)
	Dialog.AddOption("If it would help, I could go check the shop in Nettleville for you.", "QuestBegin")
	Dialog.AddOption("That does sounds unfortunate.  Sorry, I can't be of any help.")
	Dialog.Start()
end

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, 5604)
end

function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
	Dialog.AddDialog("How dare he!  I know he's lying- wait.  You didn't give him my name, did you?")
	Dialog.AddVoiceover("voiceover/english/zentomaron_croosinaden/qey_village02/zentomaroncroosinaden002.mp3", 2909174434, 3369055337)
	Dialog.AddOption("...You told me to tell him the demands were directly from you.","Delivered2")
	Dialog.Start()
end

function Delivered2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    SetStepComplete(Spawn, 5604, 2)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddDialog("Oh... I suppose I did.  Well, take this bit of coin for your efforts.  We may yet get Farnsbey to talk.  Especially if we apply him with enough ale.")
	Dialog.AddVoiceover("voiceover/english/zentomaron_croosinaden/qey_village02/zentomaroncroosinaden003.mp3", 2350120795, 405544925)
	Dialog.AddOption("Thanks.  Best of luck with all that.")
	Dialog.Start()
end