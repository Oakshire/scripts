--[[
	Script Name	: SpawnScripts/Starcrest/Ommanoden.lua
	Script Purpose	: Ommanoden <Spell Scrolls>
	Script Author	: Dorbin
	Script Date	: 07.01.2022
	Script Notes	:
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 9, "InRange", "LeaveRange")		
    ProvidesQuest(NPC,5601)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
else
    if  HasCompletedQuest(Spawn,5601)then
	local chance = math.random(0, 100)
	if chance <= 25 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/scribe_ommanoden/qey_village02/100_scribe_ommanoden_multhail1_becd50b2.mp3", "Can't you see I'm busy organizing my collections of wisdom? I've no time for chatting. Leave me alone!", "", 3010394589, 1905118172, Spawn)
    end
elseif not HasQuest(Spawn, 5601) and not HasCompletedQuest(Spawn,5601)then
	local chance = math.random(0, 100)
	if chance <= 80 then
	local choice = MakeRandomInt(1,3)
	FaceTarget(NPC, Spawn)
	if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/scribe_ommanoden/qey_village02/100_scribe_ommanoden_multhail1_becd50b2.mp3", "Can't you see I'm busy organizing my collections of wisdom? I've no time for chatting. Leave me alone!", "", 3010394589, 1905118172, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/scribe_ommanoden/qey_village02/100_scribe_ommanoden_callout_95b88e8b.mp3", "Drat!  Out of quills again!  I must get more.  I'm very busy so either make yourself useful or leave!", "doh", 615324011, 212063445, Spawn, 0)
	elseif choice == 3 then --Repeated for focus
	PlayFlavor(NPC, "voiceover/english/scribe_ommanoden/qey_village02/100_scribe_ommanoden_callout_95b88e8b.mp3", "Drat!  Out of quills again!  I must get more.  I'm very busy so either make yourself useful or leave!", "doh", 615324011, 212063445, Spawn, 0)
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
Dialog1(NPC, Spawn)
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "tapfoot", 0, 0, Spawn)
	Dialog.AddDialog("Yes, yes.  What is it? Can't you see I am busy organizing my collections of wisdom?")
	Dialog.AddVoiceover("voiceover/english/scribe_ommanoden/qey_village02/ommanoden.mp3", 4094384559, 297636522)
 	if not HasCompletedQuest (Spawn, 5601) and not HasQuest (Spawn, 5601) then 
	Dialog.AddOption("I'm actually looking for work.  Have anything I can do for you and your shop?","Dialog2")
    end
    if GetQuestStep (Spawn, 5601)==2 then 
	Dialog.AddOption("Here are five of the best hawk feather plumes I could find from Antonica.","Delivered")
    end
    Dialog.AddOption("Just browsing your wares.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddDialog("That's one question I will answer young one.  I need more quills.  Problem is I'm very picky about my plumes.  I only use one type of feather; those of the full-fledged hawk.")
	Dialog.AddVoiceover("voiceover/english/scribe_ommanoden/qey_village02/ommanoden000.mp3", 3539147498, 3086766086)
	Dialog.AddOption("I could gather some of those for you.", "QuestBegin")
	Dialog.AddOption("A bit too picky for me.  I must be going.")
	Dialog.Start()
end

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, 5601)
end


function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    SetStepComplete(Spawn, 5601, 2)
    PlayFlavor(NPC, "", "", "stare", 0, 0, Spawn)
	Dialog.AddDialog("Excellent!  I'll start perfecting them immediately!... Why are you still here?  I suppose you expect some sort of payment.  Very well.  Take these coins in return for the feathers.")
	Dialog.AddVoiceover("voiceover/english/scribe_ommanoden/qey_village02/ommanoden002.mp3", 4264271972, 1899307891)
	Dialog.AddOption("Pleasure doing business.")
	Dialog.AddOption("Thanks.  Let me just show myself out.")
	Dialog.Start()
end