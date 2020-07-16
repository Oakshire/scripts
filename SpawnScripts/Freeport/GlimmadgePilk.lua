--[[
    Script Name    : SpawnScripts/Freeport/GlimmadgePilk.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.15 07:07:14
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "", "When illusionists were purged from the Academy, it was very thorough. There are very few surviving records.", "sigh", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "It's said that Professor Romiak Jusathorn was held in the highest regard across all of Norrath, what I'd give for a journal of his to study!", "happy", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "Did you see those illusionary attempts the Academy's coercers tried?  No?  Isn't it obvious why this school of magic is needed then?", "",  1689589577, 4560189, Spawn)
end
   end

function respawn(NPC)

end

