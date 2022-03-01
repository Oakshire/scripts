--[[
    Script Name    : SpawnScripts/Commonlands/JerethBlackshield.lua
    Script Author  : Premierio015
    Script Date    : 2020.11.17 07:11:52
    Script Purpose : 
                   : 
--]]

local AFriendInNeed = 422 

function spawn(NPC)
EmoteLoop(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange", Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if HasQuest(Spawn, AFriendInNeed) and GetQuestStep(Spawn, AFriendInNeed) == 4 then
    conversation = CreateConversation()
    PlayFlavor(NPC, "jereth_blackshield/commonlands/quests/jereth_blackshield/jereth_blackshield001.mp3", "", "", 115823120, 726915273, Spawn)
    AddConversationOption(conversation, "Nethet sent me with this note about Nikora.", "dlg1")
    AddConversationOption(conversation, "Nevermind, I'll be going now.")
    StartConversation(conversation, NPC, Spawn, "What do you want messenger?  This had better be good or I'll let the rest of the crew here have some fun with you.", "dlg1")  
   elseif GetQuestStep(Spawn, AFriendInNeed) == 6 or HasCompletedQuest(Spawn, AFriendInNeed) then
    PlayFlavor(NPC, "", "I'm impressed, you survived and cut a few of the worthless slugs out of my band.  Tell Nethet he wins and I'll call off the contract on Nikora.", "", 1689589577,  4560189, Spawn)
end
   end

function dlg1(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "jereth_blackshield/commonlands/quests/jereth_blackshield/jereth_blackshield002.mp3", "", "", 1215093516, 1021957383, Spawn)
  AddConversationOption(conversation, "Bet?  What bet?", "dlg2")
  StartConversation(conversation, NPC, Spawn, "Let me see that. ... ... hrm... ... the little rat does make an interesting offer.  I accept the bet.")
end


function dlg2(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "jereth_blackshield/commonlands/quests/jereth_blackshield/jereth_blackshield003.mp3", "", "", 3296868859, 4215273968, Spawn)
  AddConversationOption(conversation, "Wait a minute...", "fight")
  StartConversation(conversation, NPC, Spawn, "Haha!  Why, the bet that you can beat my boys here in a fight to the death.  If you win I'll call off the contract on Nikora, if you lose I get double what Nikora owes me.  Judging by your looks I think I'm in for watching my boys deliver a good beating.")
end


function fight(NPC, Spawn)
 SetStepComplete(Spawn, AFriendInNeed, 4)
 PlayFlavor(NPC, "jereth_blackshield/commonlands/quests/jereth_blackshield/jereth_blackshield004.mp3", "This time we get to kill the messenger.", "", 70099391, 3895336520, Spawn)
 zone = GetZone(Spawn)
 SpawnByLocationID(zone, 299830)  -- Blackshield thugs Location ID's
 SpawnByLocationID(zone, 299831)
 SpawnByLocationID(zone, 299832)
end

function respawn(NPC)
         spawn(NPC)
end


function InRange(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
        if HasQuest(Spawn, AFriendInNeed) then
        PlayFlavor(NPC, "", "I expected that rat Nethet to show up in order to save his friend.  It seems he sent a different sort of vermin in his place.", "ponder", 1689589577, 4560189, Spawn)
end 
  end

function LeaveRange(NPC, Spawn)

end

function EmoteLoop (NPC)
	PlayAnimation(NPC, 12030)
	AddTimer(NPC, 15000, "EmoteLoop")
end
