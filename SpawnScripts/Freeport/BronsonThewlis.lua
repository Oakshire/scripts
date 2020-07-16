--[[
    Script Name    : SpawnScripts/Freeport/BronsonThewlis.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.15 07:07:52
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "", "Coercers think controlling the mind is art? Controlling what the mind sees and hears, then convincing itself that the unreal is real is true power!", "", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "Imagine the indignity of being stuck looking like an aviak for the rest of your life.  This professor Jusathorn must have had a very strong mind.", "", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "I think coercers lack the imagination to be illusionists.", "", 1689589577, 4560189, Spawn)
    end
end

function respawn(NPC)

end

