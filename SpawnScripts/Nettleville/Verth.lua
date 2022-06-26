--[[
	Script Name	: SpawnScripts/Nettleville/Verth.lua
	Script Purpose	: Verth 
	Script Author	: John Adams
	Script Date	: 2008.09.24
	Script Notes	: Original had 1 PlayFlavor.  Recreated quest, applied voiceovers, and used new dialog format - Dorbin 06.25.2022
--]]
require "SpawnScripts/Generic/DialogModule"

local Delivery = 5595

function spawn(NPC)
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
ProvidesQuest(NPC, Delivery)
end


function InRange(NPC, Spawn) --Quest Callout
if GetFactionAmount(Spawn,11)<0 then
PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
FaceTarget(NPC, Spawn)
else   
if math.random(1, 100) <= 85 then
    if not HasCompletedQuest (Spawn, Delivery) and not HasQuest (Spawn, Delivery) then 
    	FaceTarget(NPC, Spawn)
        choice = math.random(1,3)
        if choice ==1 then
		PlayFlavor(NPC, "voiceover/english/verth/qey_village01/qey_village01_flavor_verth_callout_12846b29.mp3", "Psst!  Come over here!", "beckon", 2983925092, 3211744371, Spawn)
        elseif choice ==2 then
	    PlayFlavor(NPC, "voiceover/english/verth/qey_village01/qey_village01_flavor_verth_multhail1_1b036b2d.mp3", "That meddling Falkoner didn't see you come back here, did he?  Hmmm... I don't know if I can trust you. You better leave, now!", "", 1876464980, 1327443401, Spawn)
        elseif choice ==3 then
		PlayFlavor(NPC, "voiceover/english/verth/qey_village01/qey_village01_flavor_verth_callout_12846b29.mp3", "Psst!  Come over here!", "beckon", 2983925092, 3211744371, Spawn)
        end
    end
end
end
end


function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
 	FaceTarget(NPC, Spawn)
 	PlayFlavor(NPC, "", "", "noway", 0, 0, Spawn)
    else
    if  HasCompletedQuest (Spawn, Delivery) then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/verth/qey_village01/qey_village01_flavor_verth_multhail1_1b036b2d.mp3", "That meddling Falkoner didn't see you come back here, did he?  Hmmm... I don't know if I can trust you. You better leave, now!", "glare", 1876464980, 1327443401, Spawn)
    else        
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
	Dialog.AddDialog("You didn't let that meddling Falkoner see you come back here, did ya?  Well, you do look the type.  How'd you like to put your hands on some quick coin?")
	Dialog.AddVoiceover("voiceover/english/verth/qey_village01/verth000.mp3", 93012578, 1263443219)
 	if not HasCompletedQuest (Spawn, Delivery) and not HasQuest (Spawn, Delivery) then 
        Dialog.AddOption("I'm listening.", "Helping")
    end
    if GetQuestStep (Spawn, Delivery)==2 then 
        Dialog.AddOption("Here is your 'delivery'.  You know this stuff isn't allowed in the city, right?","Delivered")
    end
    if HasQuest (Spawn, Delivery) then 
        Dialog.AddOption("I'm still working on your pickup.  I'll let you know once I've got your package.")
    end
    if not HasQuest (Spawn, Delivery) then 
    Dialog.AddOption("I'm not much for dealings in a back alley.  Keep your coin.")
    end
	Dialog.Start()
end
end
end

function Helping(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes, you look like a trustworthy type to make a delivery for me.  What do you say?  It's very easy money!  All you must do is meet my brother down by the dock.")
	Dialog.AddVoiceover("voiceover/english/verth/qey_village01/verth001.mp3", 823694387, 2631515121)
	Dialog.AddOption("Sounds easy enough.", "Helping2")
	Dialog.AddOption("A delivery?  Find someone else to be your courier.")
	Dialog.Start()
end

function Helping2(NPC,Spawn)
    OfferQuest(NPC,Spawn,Delivery)
end

function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    SetStepComplete(Spawn, Delivery, 2)
 	PlayFlavor(NPC, "", "", "shrug", 0, 0, Spawn)
	Dialog.AddDialog("Yeah yeah, I know the lecture, but nothing beats a Freeport Stout!  I don't care much for the people there, but their brewing, heh, that's a different story.")
	Dialog.AddVoiceover("voiceover/english/verth/qey_village01/verth003.mp3", 715579141, 3202334422)
	Dialog.AddOption("Pass one here and we'll pretend nothing happened here.","DoneDrink")
	Dialog.AddOption("Thanks for the coin.  I'll just leave you in this alley to your own devices.","Done")
	Dialog.Start()
end

function DoneDrink(NPC,Spawn)
    SetStepComplete(Spawn, Delivery, 2)
    SummonItem(Spawn,37386,1)
    SendMessage(Spawn, "Verth grumbles to himself as he pours out a drink and forces it in your hands.")	
    PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
end

function Done(NPC,Spawn)
    SetStepComplete(Spawn, Delivery, 2)
end