--[[
    Script Name    : SpawnScripts/CircleElders/OldBruiser.lua
    Script Author  : premierio015
    Script Date    : 2020.05.24 02:05:02
    Script Purpose : Old Bruiser for Circle Event.
                   : 
--]]

local KaylID = 433249
local RushID = 433248

function spawn(NPC)

end



function respawn(NPC)
         spawn(NPC)
end

function death(NPC, Spawn)  
AddTimer(NPC, 10000, "Mob2Attack", 1, Spawn)  -- When Old Bruiser dies, after 10 sec call function for Rush to attack the players.
end

function Mob2Attack(NPC, Spawn)
  local zone = GetZone(NPC)
  local Rush = GetSpawnByLocationID(zone, RushID)
  local Kayl = GetSpawnByLocationID(zone, KaylID)
  if Rush ~= nil then
  Say(Kayl, "Rush Attack!")
  SendPopUpMessage(Spawn, "Rush snarls at " .. GetName(Spawn) .. " ", 255, 0, 0)
  SendMessage(Spawn, "Rush snarls at " .. GetName(Spawn) .. " ", "red")
  SpawnSet(Rush, "attackable", 1)
  SpawnSet(Rush, "show_level", 1)
  SpawnSet(Rush, "faction", 1)    -- Lemmeron added please check this is what you want
  Attack(Rush, Spawn)
end
   end

