--[[
    Script Name    : SpawnScripts/Freeport/KrootaGukbutcher.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.11 08:08:07
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if not HasLanguage(Spawn, 14) then
    local choice = math.random(1, 6)
    if choice == 1 then
    PlayFlavor(NPC, "", "Aweqyq cze Qgscil jx Rtix", "", 1689589577, 4560189, Spawn, 14)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "Joyttb kxn Knzxxx hh Viqo", "", 1689589577, 4560189, Spawn, 14)
    elseif choice == 3 then
    PlayFlavor(NPC, "", "Tjhhef ndv Ehrvck ma Orqu", "", 1689589577, 4560189, Spawn, 14)
    elseif choice == 4 then 
    PlayFlavor(NPC, "", "Nwhkch sze Rzamap iq Hvzx",  "", 1689589577, 4560189, Spawn, 14)
    elseif choice == 5 then
     PlayFlavor(NPC, "", "Mkzidu guj Lygynu bk Htvj", "", 1689589577, 4560189, Spawn, 14)
   else
    PlayFlavor(NPC, "", "Rlmybb yzv Vlpckh md Zjfk", "", 1689589577, 4560189, Spawn, 14)
    end
end
   end

function respawn(NPC)

end

