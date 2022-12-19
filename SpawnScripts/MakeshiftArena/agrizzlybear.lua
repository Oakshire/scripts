--[[
    Script Name    : SpawnScripts/MakeshiftArena/agrizzlybear.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.19 05:12:31
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function death(NPC, Spawn)
              local choice = math.random(1,2)
            
                if choice == 1 then
                PlaySound(NPC,"sounds/widgets/ecology_city_sounds/ecology_crowd_cheer001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
	            elseif choice == 2 then
                PlaySound(NPC,"sounds/widgets/ecology_city_sounds/ecology_crowd_clap001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
    end
end

function respawn(NPC)
	spawn(NPC)
end