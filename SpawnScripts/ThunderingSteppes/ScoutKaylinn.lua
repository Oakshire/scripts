--[[
    Script Name    : SpawnScripts/ThunderingSteppes/ScoutKaylinn.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.27 09:06:30
    Script Purpose : 
                   : 
--]]

local OutlandBrigadeReports = 473

function spawn(NPC)
AddSpawnAccess(NPC, NPC)
SetPlayerProximityFunction(NPC, 10, "SpawnAccess", "SpawnAccess")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I was sent by Captain Sturman to collect your scouting report.", "Option1")
	AddConversationOption(conversation, "Thanks, I'll keep that in mind.  ")
	StartConversation(conversation, NPC, Spawn, "Hail. Lower your voice. Those are gnolls over there, and their hearing is sharp as a blade. I need not tell you how fearsome they can be")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll take your report back for you so that you can continue your watch.", "Option2")
	StartConversation(conversation, NPC, Spawn, "Gah!  I forgot about that blasted report. The gnolls have been acting suspiciously, and I'm certain they're up to something big. I've been watching them constantly. There's a great deal of activity in their camps, and yet, they have cut back on their raiding parties against the centaurs.  Very strange. ")
end

function Option2(NPC, Spawn)
     if GetQuestStep(Spawn, OutlandBrigadeReports) == 2 then
    SetStepComplete(Spawn, OutlandBrigadeReports, 2)
    end
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Good luck on your mission.  ")
	StartConversation(conversation, NPC, Spawn, "Thank you.  I have written it. I fear for the safety of our settlements here.  As soon as I discover what the gnolls are up to, I'll return to Bridge Keep and report to the Captain personally.")
end
  




function respawn(NPC)
	spawn(NPC)
end

function SpawnAccess(NPC, Spawn)
if GetQuestStep(Spawn, OutlandBrigadeReports) == 2 then
    AddSpawnAccess(NPC, Spawn)
elseif HasCompletedQuest(Spawn, OutlandBrigadeReports) then
    RemoveSpawnAccess(NPC, Spawn)
end
   end
