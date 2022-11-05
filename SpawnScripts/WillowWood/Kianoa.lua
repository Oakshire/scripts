--[[
    Script Name    : SpawnScripts/WillowWood/Kianoa.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.20 06:07:13
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
local CalloutTimer = false

function spawn(NPC)
ProvidesQuest(NPC,5761)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn) --Quest Callout
if GetFactionAmount(Spawn,11)<0 then
PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
FaceTarget(NPC, Spawn)
elseif GetRace(Spawn)== 7 or GetRace(Spawn)== 5 then
    if not HasQuest(Spawn,5760) and not HasCompletedQuest(Spawn, 5760)then   
    Talk(NPC,Spawn)
    elseif CalloutTimer == false then
    CalloutTimer = true
    AddTimer(NPC,90000,"ResetCallout",1,Spawn)
    Talk(NPC,Spawn)
    end
elseif CalloutTimer == false then
    CalloutTimer = true
    AddTimer(NPC,90000,"ResetCallout",1,Spawn)
    Talk(NPC,Spawn)
    end
end



function ResetCallout(NPC,Spawn)
    CalloutTimer = false
end



function hailed(NPC, Spawn)
if GetRace(Spawn)== 15 or GetRace(Spawn)== 6 or GetRace(Spawn)== 16 then
    if not HasQuest(Spawn,5761) and not HasCompletedQuest(Spawn, 5761)then   
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Have no fear.  Your troubles are over.  You stand within the harmonious city of Qeynos, and you stand among those who call you friend.")
	Dialog.AddVoiceover("voiceover/english/steward_kianoa/qey_village05/steward_kianoa001.mp3", 763946476, 363644920)
    PlayFlavor(NPC,"","","nod",0,0,Spawn)
	Dialog.AddOption("Thank you for the welcome.","Dialog1")
	Dialog.AddOption("I'll have to continue this conversation a bit later.")
	Dialog.Start()    
    else
    Talk(NPC,Spawn)
    end
else
    Talk(NPC,Spawn)
end
end


function Talk(NPC,Spawn)
        FaceTarget(NPC, Spawn)
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
        PlayFlavor(NPC,"voiceover/english/steward_kianoa/qey_village05/qst_steward_kianoa_callout1_f727a316.mp3","May the winds of fortune be a cool breeze on your cheek.","nod",809106503,4269106476,Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC,"voiceover/english/steward_kianoa/qey_village05/qst_steward_kianoa_hail1_9a0c4d73.mp3","May the winds of fortune be a cool breeze on your cheek. Farewell, friend.","hello",3463982245,3183275654,Spawn)
        end
end


function respawn(NPC)
	spawn(NPC)
end




function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Just as winter frost gives way to summer sun, so shall the night bring the dawn of a new day. I welcome you to a new life among fellow adventurers and journey folk. Home is what you make it, and this is where we call home. Your house awaits your travel-weary body.")
    PlayFlavor(NPC,"","","orate",0,0,Spawn)
	Dialog.AddVoiceover("voiceover/english/steward_kianoa/qey_village05/steward_kianoa002.mp3", 234701968, 1897463213)
	Dialog.AddOption("I agree.  I now need to seek a place to rest at night.", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Gaze into the sky and find your lucky star for it shines down upon you. Our Gracious Queen, who watches over the city, has given you a home. You shall live among us in the Willow Wood.")
	Dialog.AddVoiceover("voiceover/english/steward_kianoa/qey_village05/steward_kianoa003.mp3", 825302588, 3639191813)
    PlayFlavor(NPC,"","","agree",0,0,Spawn)
	Dialog.AddOption("I must offer her my thanks.  You said this is Willow Wood?  Where is Qeynos?", "QuestStart")
	Dialog.Start()
end

function QuestStart(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,5761)
end