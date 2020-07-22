--[[
    Script Name    : SpawnScripts/Freeport/KalrilNightstalker.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.22 09:07:13
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 8)
    if choice == 1 then
    PlayFlavor(NPC, "", "I'm a dual-breed, not a half-elf.  If you call me half-elf again, I'll cut YOU in half!", "cutthroat", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "I bet you've got some amazing tales laced with backstabbing and evil cunning.", "nod", 1689589577, 4560189, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "", "I don't know.  Now that the flotsam and jetsam have been removed from the city, it just doesn't feel like home for me.", "shrug", 1689589577, 4560189, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "", "I gotta get into the Militia.  Then I could legally beat up people.", "ponder", 1689589577, 4560189, Spawn)
    elseif choice == 5 then
    PlayFlavor(NPC, "", "Those that go where the wind takes them can wind up lost at sea.  You seem like you've got both hands on the captain's wheel.", "agree", 1689589577, 4560189, Spawn)
    elseif choice == 6 then
    PlayFlavor(NPC, "", "Hot day, isn't it?", "", 1689589577, 4560189, Spawn)
    elseif choice == 7 then
    PlayFlavor(NPC, "", "Don't look to me to be your next travel mate!", "no", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "I can't wait until I'm back out at sea.  It's odd to have solid ground under my feet.", "chuckle", 1689589577, 4560189, Spawn)
   end
end

function respawn(NPC)

end

