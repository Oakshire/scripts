--[[
	Script Name	: SpawnScripts/Starcrest/Vondorinsarnoo.lua
	Script Purpose	: Vondorinsarnoo 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Completely recreated using new format, applied all voiceovers/language check - Dorbin 06.29.2022
--]]
require "SpawnScripts/Generic/DialogModule"
dofile("SpawnScripts/Generic/UnknownLanguage.lua")

-- Quest ID's
local SOBERING_REMEDY = 246

function spawn(NPC)
	ProvidesQuest(NPC, SOBERING_REMEDY)
    SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")		
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC,Spawn)
if GetFactionAmount(Spawn,11)<0 then
    PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
else
    if not HasQuest(Spawn, SOBERING_REMEDY) and not HasCompletedQuest(Spawn,SOBERING_REMEDY)then
    if math.random(1,100)<=85 then
    if not HasLanguage(Spawn,4)then
    Garbled(NPC,Spawn)
else
    if math.random(1,100)<=65 then
    PlayFlavor(NPC, "voiceover/english/vondorinsarnoo/qey_village02/100_erudite_sorcerer_callout_df456754.mp3", "We're all coping with the recent events.  Some in better ways than others.  Take that poor drunk Hubert across the way.  I must help that poor lost soul.", "", 764679878, 531610440, Spawn,4)
--	FaceTarget(NPC, Spawn)
    end    
    end
    end
end
end
end

function hailed(NPC, Spawn)
 FaceTarget(NPC,Spawn) 
PlayAnimation(NPC,539)
if GetFactionAmount(Spawn,11) <0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
else
    if not HasLanguage(Spawn,4)then
    Garbled(NPC,Spawn)
    else
    Dialog3(NPC, Spawn)
    end
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("His faith is shaken, and he's suffered insurmountable hardships and loss.  I could help this poor soul, but first, I must remove him from his drunken stupor.")
	Dialog.AddVoiceover("voiceover/english/vondorinsarnoo/qey_village02/vondorinsarnoo000.mp3", 1058669874, 774577358)
	Dialog.AddLanguage(4)
	Dialog.AddOption("I'll help you, seems to be a worthy cause.", "OfferQuestSoberingRemedy")
	Dialog.AddOption("Best of luck to you.  I'll be off to pursue other interests.")
	Dialog.Start()
end

function OfferQuestSoberingRemedy(NPC, Spawn)
	OfferQuest(NPC, Spawn, SOBERING_REMEDY)
end

function Turnin(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC,"","","stinky",0,0,Spawn)
	Dialog.AddDialog("Whew, from the stench I can tell you have the putrid ingredients.  Depart now traveler.  I must care for Hubert.")
	Dialog.AddVoiceover("voiceover/english/vondorinsarnoo/qey_village02/vondorinsarnoo002.mp3", 2853879143, 1516182372)
	SetStepComplete(Spawn, SOBERING_REMEDY, 4)
	Dialog.AddLanguage(4)
	Dialog.AddOption("Best of luck with Hubert.")
	Dialog.AddOption("Yes, wonderful. Now to find somewhere to wash off this oder.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("We are coping with the recent events...  some in better ways than others.  Take that poor drunk, Hubert, across the way for instance...")
	Dialog.AddVoiceover("voiceover/english/vondorinsarnoo/qey_village02/vondorinsarnoo.mp3", 2553715267, 748246036)
	Dialog.AddLanguage(4)
	if not HasQuest(Spawn, SOBERING_REMEDY) and not HasCompletedQuest(Spawn,SOBERING_REMEDY) then
	Dialog.AddOption("What's wrong with him?","Dialog1")
    end
    if GetQuestStep(Spawn,SOBERING_REMEDY) ==4 then
	Dialog.AddOption("Here are the components you asked for.","Turnin")
    end        
    Dialog.AddOption("Guess some people handle their liquor better than others.  Good day!")
	Dialog.Start()
end


function respawn(NPC)
	spawn(NPC)
end
