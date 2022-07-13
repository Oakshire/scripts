--[[
    Script Name    : SpawnScripts/BigBend/widgetkrootax3barreloskins.lua
    Script Author  : torsten
    Script Date    : 2022.07.12 06:07:56
    Script Purpose : 
                   : 
--]]

local MuchAdoAboutRallos = 5634

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'Take fresh skins' then
		if GetQuestStep(Spawn, MuchAdoAboutRallos) == 2 then
            SetStepComplete(Spawn, MuchAdoAboutRallos, 2)
        end
    end
end

function spawn(NPC)
    SetRequiredQuest(NPC, MuchAdoAboutRallos, 2)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end