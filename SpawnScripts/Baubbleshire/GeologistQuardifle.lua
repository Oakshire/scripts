--[[
	Script Name	: SpawnScripts/Baubbleshire/GeologistQuardifle.lua
	Script Purpose	: Geologist Quardifle 
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: Speaks Gnomish/Updated 1/6/2020 by Shatou
	Script Notes    : Updated Dialog Module. Re-attached Voiceovers. Created trigger for Gnomish Language Check. Applied level check. 2022.08.21 Dorbin
--]]

dofile("SpawnScripts/Generic/UnknownLanguage.lua") --added 2022.03.13 Dorbin
--require "SpawnScripts/Generic/DialogModuleTest"
require "SpawnScripts/Generic/DialogModule"


local GATHERING_ROCK_SAMPLES_QUEST_ID = 504

function spawn(NPC)
	ProvidesQuest(NPC, GATHERING_ROCK_SAMPLES_QUEST_ID)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn) --Provides Language Based Callout
if GetFactionAmount(Spawn,11) >0 then
    if not HasLanguage(Spawn, 6) then
            Garbled(NPC,Spawn)
	else
    if not HasCompletedQuest (Spawn, GATHERING_ROCK_SAMPLES_QUEST_ID) and not HasQuest (Spawn, GATHERING_ROCK_SAMPLES_QUEST_ID) and HasLanguage(Spawn, 6) then 
    if GetLevel(Spawn) <=7 then
    FaceTarget(NPC,Spawn)
    PlayFlavor(NPC, "voiceover/english/geologist_quardifle/qey_village06/100_geologist_quardifle_multhail1_6d457be1.mp3", "Sorry, friend. I don't think you'll find this discovery as intriguing as I. Please move on.", "no", 3683140255, 106567053, Spawn, 6)
    else        
    choice = MakeRandomInt(1,3)
    if choice == 1 then
    FaceTarget(NPC,Spawn)
    PlayFlavor(NPC, "voiceover/english/geologist_quardifle/qey_village06/100_geologist_quardifle_callout_f774e0ee.mp3", "Hmm. Very interesting. What are these doing here? You, traveler, come... come look at look at these peculiar rocks.", "beckon", 2732164066, 2147939161, Spawn, 6)
    elseif choice ==2 then
    PlayFlavor(NPC, "voiceover/english/geologist_quardifle/qey_village06/100_geologist_quardifle_multhail2_3cc0c2f5.mp3", "These rocks are quite interesting ... I don't know where they came from. It's very strange ... they don't belong in this area. ", "", 3934406355, 941310685, Spawn, 6)
    elseif choice ==3 then
    PlayFlavor(NPC, "voiceover/english/geologist_quardifle/qey_village06/100_geologist_quardifle_quardifle_first_222b87f.mp3", "Hmm... quite strange really!  Now what ARE these doing here?", "", 2991414207, 4164150895, Spawn, 6)
    end
    end
    end
    end
end
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11) <0 then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
else
   if not HasLanguage(Spawn, 6) then -- Hailed Language Check
	    Garbled(NPC,Spawn)
	else --Provides quest checks
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("These rocks here are interesting... I'm not sure where they came from.  It's rather strange... they simply don't fit this area at all...")
	Dialog.AddVoiceover("voiceover/english/geologist_quardifle/qey_village06/geologistquardifle000.mp3", 1675886861, 3931018482)
--	Dialog.AddLanguage(6)

	Dialog.AddOption("What's so fascinating about it? There are lots of strange phenomena in Antonica.", "dlg_0_1") 
	Dialog.AddOptionRequirement(REQ_QUEST_DOESNT_HAVE_QUEST, GATHERING_ROCK_SAMPLES_QUEST_ID)
	Dialog.AddOptionRequirement(REQ_QUEST_NOT_HAS_COMPLETED_QUEST, GATHERING_ROCK_SAMPLES_QUEST_ID)	
	Dialog.AddOptionRequirement(REQ_LEVEL_GREATER_OR_EQUAL, 8)	

    Dialog.AddOption("I'm back with those samples.", "dlg_1_1")
	Dialog.AddOptionRequirement(REQ_QUEST_ON_STEP, GATHERING_ROCK_SAMPLES_QUEST_ID , 4)
	
	Dialog.AddOption("Have fun with your rocks, I'm not interested. ")
	Dialog.Start() 
        end
    end
end




--[[ Gathering Rock Samples QUEST (504) ]]--
function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The geography of the area isn't suitable for forming this kind of rock. I'm merely curious I suppose, but understanding the world we live in often unseats presumptions we have about our existence.")
	Dialog.AddVoiceover("voiceover/english/geologist_quardifle/qey_village06/geologistquardifle001.mp3", 672549863, 278365007)
--	Dialog.AddLanguage(6)
	Dialog.AddOption("Hmm, you know, that's an interesting theory.", "Dialog3")
	Dialog.AddOption("I'm not sure I buy that. ")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'll tell you what. If you want to learn more, and help me out at the same time, I can give you something to do that might whet your appetite for more - what do you say to that?")
	Dialog.AddVoiceover("voiceover/english/geologist_quardifle/qey_village06/geologistquardifle002.mp3", 2616095419, 3348208994)
--	Dialog.AddLanguage(6)
	Dialog.AddOption("Sure, that sounds good.", "dlg_0_3")
	Dialog.AddOption("No thanks.")
	Dialog.Start()
	end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, GATHERING_ROCK_SAMPLES_QUEST_ID)
end

function dlg_1_1(NPC, Spawn)
	SetStepComplete(Spawn, GATHERING_ROCK_SAMPLES_QUEST_ID, 4)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oooo, pass them here! These samples are remarkable!  These will occupy my time for quite a while! Really, you're a natural! If you find more unique rocks on your journey, return them to me and I'll reimburse you. Here, take this coin for your first discovery!")
	Dialog.AddVoiceover("voiceover/english/geologist_quardifle/qey_village06/geologistquardifle004.mp3", 4074675847, 2418120893)
--	Dialog.AddLanguage(6)
	Dialog.AddOption("Thanks Quardifle!")
	Dialog.Start()
	end
--[[ QUEST END ]]--