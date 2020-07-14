--[[
    Script Name    : SpawnScripts/Freeport/Broll.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.13 08:07:45
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 4)
    if choice == 1 then
    PlayFlavor(NPC, "", "Man do I love gnome bread!  The trolls, they just love gnomes period!", "chuckle", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "Hey do you see any water around here?  Oh well, who needs to wash their hands?", "shrug",  1689589577, 4560189, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "", "The Ogre bread takes an extra long time to bake.  Hey, they like large servings.", "nod",  1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "Hey you want that spicy cake to go?  Be careful, that one will singe your nose hairs!", "wince", 1689589577, 4560189, Spawn)
    end
end

function respawn(NPC)

end

