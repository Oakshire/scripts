--[[
    Script Name    : SpawnScripts/SerpentSewer/Stench.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.02 09:07:33
    Script Purpose : 
                   : 
--]]

local AGiftFromTheSerpentsMouth = 5273

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end


function death(NPC, Spawn)
if not HasQuest(Spawn, AGiftFromTheSerpentsMouth) and not HasCompletedQuest(Spawn, AGiftFromTheSerpentsMouth) then
AddLootItem(NPC, 13354)
elseif HasCompletedQuest(Spawn, AGiftFromTheSerpentsMouth) then
RemoveLootItem(NPC, 13354)
end
  end

function respawn(NPC)
	spawn(NPC)
end