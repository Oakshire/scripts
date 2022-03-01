--[[
    Script Name    : SpawnScripts/Freeport/Rake.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.10 08:08:02
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 5)
    if choice == 1 then
    PlayFlavor(NPC, "", "If the Overlord hadn't returned, trade through the Commonlands would have been completely controlled by the Red Hoods.", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "Neriak also benefits from the knowledge of the Red Hoods.", "", 1689589577, 4560189, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "", "The Jackal's mastery of stealth is impressive...for an Ayr'Dal.", "sniff", 1689589577, 4560189, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "", "The pitiful slugs of the Freeport Militia were unable to even find us, much less stop us.", "", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "The Green Hoods failed to recognize the price of showing mercy to their enemies.  The Red Hoods will not make the same mistakes.", "agree", 1689589577, 4560189, Spawn)
   end     
end

function respawn(NPC)

end

