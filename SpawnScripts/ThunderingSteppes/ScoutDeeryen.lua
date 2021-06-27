--[[
    Script Name    : SpawnScripts/ThunderingSteppes/ScoutDeeryen.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.27 10:06:37
    Script Purpose : 
                   : 
--]]

local OutlandBrigadeReports = 473

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I am here to collect your scouting report for Captain Sturman.", "Option1")
	AddConversationOption(conversation, "I'll make sure not to provoke them.  ")
	StartConversation(conversation, NPC, Spawn, "Stay low to the ground, friend.  These Firerock giants are fiercely territorial, and will attack a stranger unprovoked.")
end

function Option1(NPC, Spawn)
    if GetQuestStep(Spawn, OutlandBrigadeReports) == 3 then
    SetStepComplete(Spawn, OutlandBrigadeReports, 3)
    end
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What have you found out?", "Option2")
	StartConversation(conversation, NPC, Spawn, "Good.  This saves me the trouble of leaving my watch.  These giants have been very active lately.")
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll take your report to Sturman.  Be careful.")
	StartConversation(conversation, NPC, Spawn, "See those craters down there?  The giants are mining them again.  And you know what that means-they're preparing for war, probably to drive the forces of Qeynos from the land.  They're notorious for slaying gnolls and centaurs, but they feel especially threatened by organized humans.  We had better expect the worst.")
	AddTimer(NPC, 200000, "delayed_despawn", 1, Spawn)
end

function delayed_despawn(NPC, Spawn)
Despawn(NPC)
end


function respawn(NPC)
	spawn(NPC)
end