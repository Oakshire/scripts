--[[
	Script Name	: SpawnScripts/TimorousDeep/curiousore.lua
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function prespawn(NPC)
local random_model = MakeRandomInt(1, 2)
if random_model == 1 then
SpawnSet(NPC, "model_type", 3956)
elseif random_model == 2 then
SpawnSet(NPC, "model_type", 3957)
end
  end

function spawn(NPC)
	SetRequiredQuest(NPC, 5796, 1)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
end
