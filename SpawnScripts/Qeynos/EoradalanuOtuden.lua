--[[
	Script Name	: SpawnScripts/SouthQeynos/EoradalanuOtuden.lua
	Script Purpose	: Eoradalanu Otuden 
	Script Author	: Dorbin
	Script Date	: 2022.05.15
	Script Notes	: 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")
local Tower = 5554


function spawn(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
ProvidesQuest(NPC,Tower)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
    FactionChecking(NPC, Spawn, faction)    
    else
    local conversation = CreateConversation()
    FaceTarget(NPC,Spawn)
   	    PlayFlavor(NPC, "voiceover/english/eoradalanu_otuden/qey_south/eoradalanuotuden000.mp3", "", "bow", 2497124550, 1074104218, Spawn, 0)
        if not HasQuest(Spawn,Tower) and not HasCompletedQuest(Spawn, Tower)then
        AddConversationOption(conversation, "The tower is quite the sight!","QuestStart")
        end
        AddConversationOption(conversation, "Alright.")
    	StartConversation(conversation, NPC, Spawn, "Welcome to the grounds of the Three Towers. Walk lightly, speak quietly. The mages within are deep in concentration, disruptions can cause impediments to progress. Please, move along.")
    end
end

function QuestStart(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/eoradalanu_otuden/qey_south/eoradalanuotuden001.mp3", "", "agree", 4187976248, 890864421, Spawn)
    local conversation = CreateConversation()
    AddConversationOption(conversation, "How might I get to the other tower?", "QuestStart2")
	AddConversationOption(conversation, "Interesting.  Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "Aye, it is.  It required many years of blending magic with skilled worksmanship of the stone by craftsman.  A similar tower exists out in the Antonican hills.  A good distance from the city.  It isn't quite as impressive, but it is still a sight to behold.")
end	

function QuestStart2(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/eoradalanu_otuden/qey_south/eoradalanuotuden002.mp3", "", "orate", 3791578980, 3282103774, Spawn)
    local conversation = CreateConversation()
    AddConversationOption(conversation, "I think I'll go see this tower for myself.", "QuestStart3")
	AddConversationOption(conversation, "It sounds like a bunch of hooey!","Act")
	StartConversation(conversation, NPC, Spawn, "The Tower of Oracles is operated by the Order of Coldwind.  They choose to do their research away from the populace of Qeynos and shun contact with those outside their order.  They desire to understand the nature of mana and what caused the moon of Luclin to rip asunder!  It is worthy research, indeed.")
end	

function InRange(NPC,Spawn)
if GetFactionAmount(Spawn,11) <0 then
    FactionCheckingCallout(NPC, Spawn, faction)
    end
end

function Act(NPC,Spawn)
 	FaceTarget(NPC, Spawn)
       PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
end

function QuestStart3(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,Tower)
    end