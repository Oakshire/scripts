--[[
	Script Name	: Spells/Commoner/BetaMount.lua
	Script Purpose	: Spawns mounts of {model_id}, {color} and {speed}
	Script Author	: John Adams / LethalEncounter
	Script Date	: 2009.03.28
	Script Notes	: JA: Color and Speed params are optional?
--]]

function cast(Caster, Target, MountID, MountRed, MountGreen, MountBlue, SaddleRed, SaddleGreen, SaddleBlue, MountSpeed)

   if MountID ~= nil then
      SetMount(Caster, MountID)
      if MountRed ~= nil then
         SetMountColor(Caster, MountRed, MountGreen, MountBlue, SaddleRed, SaddleGreen, SaddleBlue)
      end
      if MountSpeed ~= nil then
         SetSpeed(Caster, MountSpeed)
      end
   end -- missing me
end

function remove(Caster, Target)
	SetMount(Caster, 0)
	SetSpeed(Caster, 0)
end
