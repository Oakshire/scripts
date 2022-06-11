--[[
    Script Name    : SpawnScripts/QeynosHarbor/SamwellBrighton.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.10 12:06:17
    Script Purpose : Fabricated, yet relevant to 'The Leaky Drake' survivor story.
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    local Choice = MakeRandomInt(1,3)

    if Choice == 1 then	
    PlayFlavor(NPC,"","Please, leave me to my drink.  I'm trying to wash away these visions... my crew mates, dashed out to sea.  Gone.","",0,0,Spawn)
    elseif Choice == 2 then	
    PlayFlavor(NPC,"","Can't you see I'm drink'n?!  To the lost crew of the Leaky Drake.  May she rest in the deeps.","",0,0,Spawn)
    elseif Choice == 3 then	
    PlayFlavor(NPC,"","Our ship had seen many voyages for the Far Seas Trading company, but Captain James... the crew... gone.","",0,0,Spawn)
    end
end


function respawn(NPC)
	spawn(NPC)
end