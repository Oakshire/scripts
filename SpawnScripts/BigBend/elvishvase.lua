--[[
    Script Name    : SpawnScripts/BigBend/elvishvase.lua
    Script Author  : torsten
    Script Date    : 2022.07.12 07:07:28
    Script Purpose : 
                   : 
--]]

local MuchAdoAboutRallos = 5634

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'Gather' then
		if not QuestStepIsComplete(Spawn, MuchAdoAboutRallos, 4) then
            SetStepComplete(Spawn, MuchAdoAboutRallos, 4)
        end
    end
end

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end