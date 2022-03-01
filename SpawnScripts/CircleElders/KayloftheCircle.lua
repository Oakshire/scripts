--[[
    Script Name    : SpawnScripts/CircleElders/KayloftheCircle.lua
    Script Author  : premierio015
    Script Date    : 2020.05.20 06:05:17
    Script Purpose : Kayl Script for the Circle Event.
                   : 
--]]


local OldBruiserID = 433247
local TayilID = 1587665


function spawn(NPC)
    
end


function respawn(NPC)
         spawn(NPC)
end

--[[

function InRange(NPC, Spawn)
AddTimer(NPC, 10000, "MobAttack", 1, Spawn)
end
--]]


function MobAttack(NPC, Spawn)
local zone = GetZone(NPC)
local OldBruiser = GetSpawnByLocationID(zone, OldBruiserID)
                if OldBruiser ~= nil then
                Say(NPC, "Old Bruiser Attack!")
                SendPopUpMessage(Spawn, "Old Bruiser growls at " .. GetName(Spawn) .. " ", 255, 0, 0)
                SendMessage(Spawn, "Old Bruiser growls at " .. GetName(Spawn) .. " ", "red")
  SpawnSet(OldBruiser, "show_level", 1) -- Lemmeron added please check this is what you want
  SpawnSet(OldBruiser, "faction", 1)    -- Lemmeron added please check this is what you want
  SpawnSet(OldBruiser, "attackable", 1) -- Lemmeron added please check this is what you want

  
		Attack(OldBruiser, Spawn)
end
   end


function KillDialogue(NPC, Spawn)
local zone = GetZone(NPC)
local Tayil_Spawn = SpawnByLocationID(zone, TayilID) -- Spawn Tayil after Breeze dies and Kayl start speech.
if Tayil_Spawn ~= nil then
local Tayil2 = GetSpawnByLocationID(zone, TayilID)
MoveToLocation(Tayil_Spawn, 6.52, 0.00, -0.52, 2)
AddTimer(NPC, 5000, "kill1", Spawn)
end
   end


function kill1(NPC, Spawn) 
local zone = GetZone(NPC)
local Tayil = GetSpawnByLocationID(zone, TayilID)
if Tayil ~= nil then
PlayFlavor(Tayil, "", "I knew we'd find you, Kayl. I see you've been doing well for yourself. Too bad your treasures are about to become mine!", "", 1689589577, 4560189)
PlayFlavor(NPC, "", "T... Tayil! How did you find me?", "beg", 1689589577, 4560189)
AddTimer(NPC, 7000, "kill2", Spawn)
end
   end

function kill2(NPC, Spawn)
local zone = GetZone(NPC)
local Tayil = GetSpawnByLocationID(zone, TayilID)
PlayFlavor(Tayil, "", "That's not important, Qeynosian. What is important is that your days upon Norrath are at an end. Prepare to die!", "", 1689589577, 4560189)
AddTimer(NPC, 3000, "death", Spawn)
end

function death(NPC, Spawn)
local zone = GetZone(NPC)
local Tayil = GetSpawnByLocationID(zone, TayilID)
PlayFlavor(NPC, "", "Noooooooo!", "", 1689589577, 4560189)
KillSpawn(NPC)
end
