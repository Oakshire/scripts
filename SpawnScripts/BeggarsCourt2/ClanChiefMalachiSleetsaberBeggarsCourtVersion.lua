--[[
    Script Name    : SpawnScripts/BeggarsCourt2/ClanChiefMalachiSleetsaberBeggarsCourtVersion.lua
    Script Author  : Premierio015
    Script Date    : 2020.09.01 08:09:43
    Script Purpose : 
                   : 
--]]

local QUEST = 579

function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange", "InRange")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

function InRange(NPC, Spawn)
AddTimer(NPC, 10000, "speech", 1, Spawn)
end


function speech(NPC, Spawn)
if GetQuestStep(Spawn, QUEST) == 2 then
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
PlayFlavor(NPC, "", "We will remove the humans, frogloks, halflings and the rest of the thin-bloods, and remake it a city for the Northmen!  A city worthy of us!", "", 1689589577, 4560189, Spawn)
SetStepComplete(Spawn, QUEST, 3)
end
