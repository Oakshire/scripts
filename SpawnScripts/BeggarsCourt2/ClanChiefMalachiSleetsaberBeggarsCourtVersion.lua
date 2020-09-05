--[[
    Script Name    : SpawnScripts/BeggarsCourt2/ClanChiefMalachiSleetsaberBeggarsCourtVersion.lua
    Script Author  : Premierio015
    Script Date    : 2020.09.01 08:09:43
    Script Purpose : 
                   : 
--]]

local QUEST = 579
local citizenID = 133770930

function spawn(NPC)
SetTempVariable(NPC, "speak", "true") 
AddSpawnAccess(NPC, NPC)
SetPlayerProximityFunction(NPC, 5, "InRange", "OutRange")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end

function InRange(NPC, Spawn)
AddSpawnAccess(NPC, Spawn)
if GetQuestStep(Spawn, QUEST) == 3 and GetTempVariable(NPC, "speak")  == "true" then
SetTempVariable(NPC, "speak", "false")
AddTimer(NPC, 10000, "speech", 1, Spawn)
elseif GetQuestStep(Spawn, QUEST) == 7 and GetTempVariable(NPC, "speak")  == "true" then
SetTempVariable(NPC, "speak", "false")
AddTimer(NPC, 10000, "speech6", 1, Spawn)
elseif not HasQuest(Spawn, QUEST) or GetQuestStep(Spawn, QUEST) == 1 or GetQuestStep(Spawn, QUEST) == 5 then
RemoveSpawnAccess(NPC, Spawn)
end
  end


function OutRange(NPC, Spawn)

end

function speech(NPC, Spawn)
if GetQuestStep(Spawn, QUEST) == 3 then
AddTimer(NPC, 10000, "speech1", 1, Spawn)
end 
   end

function speech1(NPC, Spawn)
PlayFlavor(NPC, "", "My barbarian brothers and sisters, why must we fill our time here, serving as weapons to The Overlord, and this lot of ungrateful trash?", "", 1689589577, 4560189, Spawn)
AddTimer(NPC, 10000, "speech2", 1, Spawn)
end

function speech2(NPC, Spawn)
PlayFlavor(NPC, "", "How have the Northmen fallen so far?", "", 1689589577, 4560189, Spawn)
AddTimer(NPC, 10000, "speech3", 1, Spawn)
end

function speech3(NPC, Spawn)
PlayFlavor(NPC, "", "At one time we had secretly set our sights upon taking Freeport and remaking it our new Halas.  That will never be, now.", "", 1689589577, 4560189, Spawn)
AddTimer(NPC, 10000, "speech4", 1, Spawn)
end

function speech4(NPC, Spawn)
PlayFlavor(NPC, "", "But within the Frostfang Sea the answer lies.  In the names and memories of our ancestors, we must move to New Halas!", "", 1689589577, 4560189, Spawn)
AddTimer(NPC, 10000, "speech5", 1, Spawn)
end

function speech5(NPC, Spawn)
SetTempVariable(NPC, "speak", "true") 
PlayFlavor(NPC, "", "We will remove the humans, frogloks, halflings and the rest of the thin-bloods, and remake it a city for the Northmen!  A city worthy of us!", "", 1689589577, 4560189, Spawn)
SetStepComplete(Spawn, QUEST, 3)
end

function speech6(NPC, Spawn)
PlayFlavor(NPC, "", "My barbarian brothers and sisters, One of our brave clan stood up and showed me the error of my thoughts.", "", 1689589577, 4560189, Spawn)
AddTimer(NPC, 10000, "speech7", 1, Spawn)
end

function speech7(NPC, Spawn)
PlayFlavor(NPC, "", "I have been so focused on rebuilding the past, I had not seen the present.", "", 1689589577, 4560189, Spawn)
AddTimer(NPC, 10000, "speech8", 1, Spawn)
end

function speech8(NPC, Spawn)
PlayFlavor(NPC, "", "The Overlord will surely see us as betrayers and command The Militia to deal with all of us, if I continue.", "", 1689589577, 4560189, Spawn)
AddTimer(NPC, 10000, "citizenspeech", 1, Spawn)
end

function citizenspeech(NPC, Spawn)
local zone = GetZone(NPC)
local citizen = GetSpawnByLocationID(zone, citizenID)
if citizen ~= nil then
PlayFlavor(citizen, "", "Let them try!  There would be nothing left but ashes and wailing women by the end!", "", 1689589577, 4560189)
AddTimer(NPC, 10000, "speech9", 1, Spawn)
end
   end

function speech9(NPC, Spawn)
PlayFlavor(NPC, "", "Yes, some theirs, but mostly ours.  And then who would be left to take on New Halas?", "",  1689589577, 4560189, Spawn)
AddTimer(NPC, 10000, "speech10", 1, Spawn)
end

function speech10(NPC, Spawn)
PlayFlavor(NPC, "", "Freeport is not the Halas of old, but it is a strong place, where we are free to battle and feast.", "",  1689589577, 4560189, Spawn)
AddTimer(NPC, 10000, "speech11", 1, Spawn)
end

function speech11(NPC, Spawn)
SetTempVariable(NPC, "speak", "true")
PlayFlavor(NPC, "", "I am proud to call this bastion of strength and wealth my home and follow our fearful leader, The Overlord, into any battlefield!", "", 1689589577, 4560189, Spawn)
SetStepComplete(Spawn, QUEST, 7)
end


