--[[
    Script Name    : SpawnScripts/Antonica/adeadgnoll.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.10 06:05:06
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
Model(NPC)
end

function Model(NPC)
local Choice = MakeRandomInt(1,3)
if Choice ==1 then
SpawnSet(NPC,"model_type","1384")
elseif Choice ==2 then
SpawnSet(NPC,"model_type","3816")
else
SpawnSet(NPC,"model_type","3814")
end
end

function respawn(NPC)
	spawn(NPC)
end