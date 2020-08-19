--[[
    Script Name    : SpawnScripts/CircleElders/Rush.lua
    Script Author  : premierio015
    Script Date    : 2020.05.24 10:05:59
    Script Purpose : Rush Script for Circle Event
                   : 
--]]
local KaylID = 433249
local BreezeID = 1587624

function spawn(NPC)

end


function respawn(NPC)
         spawn(NPC)
end


function death(NPC, Spawn) -- When Rush dies,  after 10 sec Old Bruiser will attack.
AddTimer(NPC, 10000, "Mob3Attack", 1, Spawn)
end

function Mob3Attack(NPC, Spawn)
local zone = GetZone(NPC)
local Breeze = GetSpawnByLocationID(zone, BreezeID)
local Kayl = GetSpawnByLocationID(zone, KaylID)
if Breeze ~= nil then
Say(Kayl, "Breeze Attack!")
SpawnSet(Breeze, "attackable", 1)
SpawnSet(Breeze, "show_level", 1)
  SpawnSet(Breeze, "faction", 1)    -- Lemmeron added please check this is what you want
SendPopUpMessage(Spawn, "Old Bruiser screeches at " .. GetName(Spawn) .. " ", 255, 0, 0) -- shouldnt this say Breeze ?
SendMessage(Spawn, "Old Bruiser screeches at " .. GetName(Spawn) .. " ", "red") -- shouldnt this say Breeze ?
Attack(Breeze, Spawn)
end
   end
