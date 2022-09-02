
--[[
	Script Name	: SpawnScripts/TheBaubbleshire/NylaDiggs.lua
	Script Purpose	: Nyla Diggs 
	Script Author	: Dorbin
	Script Date	: 2022.01.10
	Script Notes	: Racial language check for Callout & Quest offering
	                   Applied new format/cleaned up script - 2022.08.11 Dorbin
	
--]]
require "SpawnScripts/Generic/DialogModule"
dofile("SpawnScripts/Generic/UnknownLanguage.lua")

local PieThief = 5437

function spawn(NPC)
    ProvidesQuest(NPC, PieThief)
	SetPlayerProximityFunction(NPC, 9, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn) --Provides Language Based Callout with delay
if GetFactionAmount(Spawn,11) >0 and math.random (0,100) <80 then
    if not HasLanguage(Spawn, 8) then
        Garbled(NPC,Spawn)
	elseif not HasCompletedQuest (Spawn, PieThief) and not HasQuest (Spawn, PieThief) then 
    PlayFlavor(NPC, "voiceover/english/nyla_diggs/qey_village06/100_nyla_diggs_nyla_first_d022db59.mp3", "Now where's that pie? I know I had it here.", "", 3499289366, 4159200256, Spawn, 8)
    end
end
end


function LeaveRange(NPC, Spawn)
end

function hailed(NPC,Spawn)
if GetFactionAmount(Spawn,11) <0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
else
    if not HasLanguage(Spawn, 8) then -- Language Check for Stout (8)
    Garbled(NPC,Spawn)
	else	
    if not HasCompletedQuest (Spawn, PieThief) and not HasQuest (Spawn, PieThief) then     
    Dialog1(NPC,Spawn)
    elseif not HasCompletedQuest (Spawn, PieThief) and HasQuest (Spawn, PieThief) then
    Dialog2(NPC,Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/nyla_diggs/qey_village06/nyladiggs000.mp3", "Oh, why hello there dear. How are you today? Afraid I can't talk right now", "", 2088434236, 3361269998, Spawn,8)
    end
end
end
end

  function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, why hello there dear. How are you today? Afraid I can't talk right now")
	Dialog.AddVoiceover("voiceover/english/nyla_diggs/qey_village06/nyladiggs000.mp3", 2088434236, 3361269998)
    Dialog.AddLanguage(8)
	Dialog.AddOption("You seem lost in thought.  Anything I can help with?", "Pie1")
	Dialog.AddOption("Just saying hello!")
	Dialog.Start()
end  

  function Pie1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You see, the pie I baked earlier today, it's missing.  Not an uncommon event around here if you know what I mean!  You'll always find a rumblin' belly 'round here, love!")
	Dialog.AddVoiceover("voiceover/english/nyla_diggs/qey_village06/nyladiggs001.mp3", 919242821, 353275540)
    Dialog.AddLanguage(8)
	Dialog.AddOption("I can still smell it!  Would you like me to look for it?","Offer")
	Dialog.AddOption("Oh, look at the time.  I must be going!")
	Dialog.Start()
end  

function Offer(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, PieThief)
end

  function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, who is it? They're in for a tongue-lashing!")
	Dialog.AddVoiceover("voiceover/english/nyla_diggs/qey_village06/nyladiggs003.mp3", 1047555750, 2550790552)
    Dialog.AddLanguage(8)
    if GetQuestStep(Spawn, PieThief) == 5 then
    Dialog.AddOption( "Lozoria over in the tavern ate it!", "ThiefFinished")
    end
    Dialog.AddOption("I'm still looking!")
	Dialog.Start()
end  

function ThiefFinished(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, that rascal!  Here's your pie, dear.  I'll take care of that rapscallion later!")
	Dialog.AddVoiceover("voiceover/english/nyla_diggs/qey_village06/nyladiggs004.mp3", 3185345641, 3927954754)
    Dialog.AddLanguage(8)
	Dialog.AddOption("Thanks, the pie smells delicous!")
	Dialog.Start()
    SetStepComplete(Spawn, PieThief, 5)
end 


