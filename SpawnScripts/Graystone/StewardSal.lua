--[[
    Script Name    : SpawnScripts/Graystone/StewardSal.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.20 04:07:00
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
local CalloutTimer = false

function spawn(NPC)
ProvidesQuest(NPC,5764)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn) --Quest Callout
if GetFactionAmount(Spawn,11)<0 then
PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
FaceTarget(NPC, Spawn)
elseif GetRace(Spawn)== 0 or GetRace(Spawn)== 2 then
    if not HasQuest(Spawn,5764) and not HasCompletedQuest(Spawn, 5764)then   
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"voiceover/english/steward_sal/qey_village03/qst_steward_sal_callout1_46762b99.mp3","No time for talkin', friend!  I gotta keep an eye out for new refugees.","bye",1387716528,1390458474,Spawn)
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
    if GetFactionAmount(Spawn,11)<0 then
        PlayFlavor(NPC,"","","shakefist",0,0,Spawn)
    else        
if GetRace(Spawn)== 0 or GetRace(Spawn)== 2 then
    if not HasQuest(Spawn,5764) and not HasCompletedQuest(Spawn, 5764)then
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("So, you came from the Isle, did ya?  Yeah, you have the look of a drowned rat, you do!  Har Har!  Take no offense, friend.  'Twas just a joke, that's all.  I'm here to welcome ya to Qeynos, but that doesn't mean I have to be a sourpuss, does it?  Har Har!")
	Dialog.AddVoiceover("voiceover/english/steward_sal/qey_village03/steward_sal001.mp3", 3208153307, 1430720634)
    PlayFlavor(NPC,"","","hello",0,0,Spawn)
	Dialog.AddOption("No offense taken, friend.  It's nice to laugh again.","Dialog1")
	Dialog.AddOption("I'll have to continue this conversation a bit later.")
	Dialog.Start()
    else
    Talk(NPC,Spawn)
    end
else    
    Talk(NPC,Spawn)
    end
end
end

function Talk(NPC,Spawn)
        FaceTarget(NPC, Spawn)
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
        PlayFlavor(NPC,"voiceover/english/steward_sal/qey_village03/qst_steward_sal_callout1_46762b99.mp3","No time for talkin', friend!  I gotta keep an eye out for new refugees.","no",1387716528,1390458474,Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC,"voiceover/english/steward_sal/qey_village03/qst_steward_sal_callout1_46762b99.mp3","No time for talkin', friend!  I gotta keep an eye out for new refugees.","hello",1387716528,1390458474,Spawn)
        end
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, that's good to hear!  The way you refugees get jostled up, sometimes you lose yer sense of humor.  Why am I saying \"you refugees\"?  We're all refugees in our own way, if you think about it.  Ah, but it's nice to have a house waiting for ya' at night, ain't that right?")
    PlayFlavor(NPC,"","","happy",0,0,Spawn)
	Dialog.AddVoiceover("voiceover/english/steward_sal/qey_village03/steward_sal002.mp3", 2420359673, 808472399)
	Dialog.AddOption("Ummm... I think you might be wrong.  I don't have a house.", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ahh ... but yer wrong, friend. About the house part, I mean ...  The Queen used her own money to set up houses for those who can't afford them. That means you! Your house is right here in Graystone!  That's what I'm here to tell ya!")
	Dialog.AddVoiceover("voiceover/english/steward_sal/qey_village03/steward_sal003.mp3", 3422117225, 1713331897)
    PlayFlavor(NPC,"","","no",0,0,Spawn)
	Dialog.AddOption("Really?  That's very nice of her.  Where did you say this place was?", "QuestStart")
	Dialog.Start()
end

function QuestStart(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,5764)
end


function respawn(NPC)
	spawn(NPC)
end