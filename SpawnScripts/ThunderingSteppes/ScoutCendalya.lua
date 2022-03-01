--[[
    Script Name    : SpawnScripts/ThunderingSteppes/ScoutCendalya.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.27 10:06:06
    Script Purpose : 
                   : 
--]]

local OutlandBrigadeReports = 473

function spawn(NPC)
AddSpawnAccess(NPC, NPC)
SetPlayerProximityFunction(NPC, 10, "SpawnAccess", "SpawnAccess")
end


function SpawnAccess(NPC, Spawn)
  if GetQuestStep(Spawn, OutlandBrigadeReports) == 5 then
   AddSpawnAccess(NPC, Spawn)
  elseif HasCompletedQuest(Spawn, OutlandBrigadeReports) then
  RemoveSpawnAccess(NPC, Spawn)
  end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks for the information.  ")
	AddConversationOption(conversation, "I am helping Captain Sturman collect the scouting reports.", "Option1")
	StartConversation(conversation, NPC, Spawn, "Shhhh ... can you see them?  Those women in the water?  ")
end

function Option1(NPC, Spawn)
    if GetQuestStep(Spawn, OutlandBrigadeReports) == 5 then
    SetStepComplete(Spawn, OutlandBrigadeReports, 5)
    end
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Are they any danger to the people of Thundermist or Bridge Keep?", "Option2")
	StartConversation(conversation, NPC, Spawn, "They are properly called ''Selkies,'' and they're fascinating, aren't they.  I think they're as intrigued with us as we are with them.  I wish I could have an opportunity to talk with one, but they're so skittish.  You know, I once tracked a selkie as far east as Thundermist before it noticed me and disappeared back under the water.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Good luck with that.")
	StartConversation(conversation, NPC, Spawn, "Oh!  Yes, here it is.  You know, they seem very curious, but not dangerous.  Still, I would like to remain here and observe them, maybe even make contact.")
end


function respawn(NPC)
	spawn(NPC)
end