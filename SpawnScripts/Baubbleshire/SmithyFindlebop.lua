--[[
	Script Name	: SpawnScripts/Baubbleshire/SmithyFindlebop.lua
	Script Purpose	: Smithy Findlebop <Weaponsmith>
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: Added quest & updated dialog module.  2022.08.20 Dorbin
--]]
require "SpawnScripts/Generic/DialogModule"

local MystratTails = 5439

--dofile("SpawnScripts/Generic/GenericWeaponsmithVoiceOvers.lua") NOT NECESSARY FOR FINDLEBOP

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
	ProvidesQuest(NPC, MystratTails)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if GetFactionAmount(Spawn,11) <0 then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "","","shakefist",0,0, Spawn)
else    
    if not HasCompletedQuest(Spawn, MystratTails) then
        	if math.random(0, 100) <= 85 then
            PlayFlavor(NPC, "voiceover/english/smithy_findlebop/qey_village06/100_smithy_findlebop_findlebop_first_fd0d329e.mp3", "More dirt? How in Brell's name can I get this thing to work if I can't keep it clean?!", "grumble", 1928188613, 3260712092, Spawn)
            end
    else
	if math.random(0, 100) <= 25 then
	local choice = MakeRandomInt(1, 2)
		FaceTarget(NPC, Spawn)
        if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/smithy_findlebop/qey_village06/100_smithy_findlebop_multhail1_aa73007b.mp3", "Now, if I can only figure out how the sprocket will fit in this device, I'll be set! Why are you interrupting my work?  Can't you see I'm busy? Go away!", "scream", 3823811804, 70891212, Spawn)
        else
        PlayFlavor(NPC, "voiceover/english/smithy_findlebop/qey_village06/100_smithy_findlebop_multhail2_5d0f29cb.mp3", "Now, if I can only figure out how the sprocket will fit in this device, I'll be set! Why are you interrupting my work?  Can't you see I'm busy?", "frustrated", 446470782, 3454872230, Spawn)
    	end
    end
end
end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11) <0 then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "","","shakefist",0,0, Spawn)
else  
	if not HasCompletedQuest(Spawn, MystratTails) then
	    FaceTarget(NPC, Spawn)
        Begin(NPC,Spawn)
	else
	    Callout(NPC,Spawn)
	 end  
    end
end

function Callout(NPC,Spawn)
	    local randomCall2 = MakeRandomInt(1, 4)
	    FaceTarget(NPC, Spawn)
        if randomCall2 == 1 then
        PlayFlavor(NPC, "voiceover/english/smithy_findlebop/qey_village06/100_smithy_findlebop_multhail1_aa73007b.mp3", "Now, if I can only figure out how the sprocket will fit in this device, I'll be set! Why are you interrupting my work?  Can't you see I'm busy? Go away!", "scream", 3823811804, 70891212, Spawn)
        elseif randomCall2 == 2 then
        PlayFlavor(NPC, "voiceover/english/smithy_findlebop/qey_village06/100_smithy_findlebop_multhail2_5d0f29cb.mp3", "Now, if I can only figure out how the sprocket will fit in this device, I'll be set! Why are you interrupting my work?  Can't you see I'm busy?", "frustrated", 446470782, 3454872230, Spawn)
        elseif randomCall2 == 3 then
		PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/weaponsmith/gnome_weaponsmith_service_good_1_hail_gm_37dbcab8.mp3", "Welcome to my humble shop.  We have quite a selection of weapons to choose from.  See for yourself...", "salute", 1420367370, 281045768, Spawn, 0)
        elseif randomCall2 == 4 then
		PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/weaponsmith/gnome_weaponsmith_service_good_1_hail_gm_1248b278.mp3", "I just got a shipment in from the Far Sea's Trading Company.  I don't just show anybody this stuff so, shhhh!  ", "wink", 2730095756, 1896311415, Spawn, 0)
    	end
    end


function GotAnyWork(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("No, NO! I'm too busy to give you a task! GET OUT! Get out, before I lose my train of thought! Now where was I? Oh, yes, if only I had something to scrub this bit of metal...")
    PlayFlavor(NPC, "","","no",0,0, Spawn)
	Dialog.AddVoiceover("voiceover/english/smithy_findlebop/qey_village06/smithyfindlebop001.mp3",3069436891,2776154152)
	Dialog.AddOption("I could look for something to clean that for you.", "OfferQuest1")
	Dialog.AddOption("Yeesh, sorry I asked.")
	Dialog.Start()
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, MystratTails)
end


function Begin(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Now, if only I could only figure out how this sprocket will fit in this device, it'll be set. Oh! Yes? Why are you interrupting my work? Can't you SEE I'M BUSY HERE?")
    PlayFlavor(NPC, "","","frustrated",0,0, Spawn)
	Dialog.AddVoiceover("voiceover/english/smithy_findlebop/qey_village06/smithyfindlebop000.mp3",1173629486, 2280866988)
	if not HasQuest(Spawn, MystratTails) and not HasCompletedQuest(Spawn, MystratTails) then
	Dialog.AddOption("You seem very busy.  Need any help around here?", "GotAnyWork")
	elseif HasQuest(Spawn, MystratTails) and GetQuestStep(Spawn, MystratTails) == 2 then
	Dialog.AddOption("Here is a nice Mystrat tail for you.", "RatTail_Handin")
	end
	Dialog.AddOption("Sorry. Just passing by.")
	Dialog.Start()   
end
    
function RatTail_Handin(NPC, Spawn)
    SetStepComplete(Spawn, MystratTails, 2)
 	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes, YES! This tail will do the trick! Very bristley, indeed. Good job! Perhaps you weren't a bother afterall. Let me pay you for your trouble. It is the least I could do. Sorry for being rude earlier.")
    PlayFlavor(NPC, "","","thanks",0,0, Spawn)
	Dialog.AddVoiceover("voiceover/english/smithy_findlebop/qey_village06/smithyfindlebop003.mp3",4033931152,227104096)
	Dialog.AddOption("Thanks, I'll be sure not to step on any of your sprockets on my way out.")
	Dialog.Start()   
end

