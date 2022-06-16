--[[
    Script Name    : Spells/Commoner/SetRecallPoint.lua
    Script Author  : neatz09
    Script Date    : 2019.10.12 09:10:20
    Script Purpose : 
    Edit By        : Devn00b: Implemented Bind Location check, as well as in combat check. 6/15/2022
--]]

function cast(Caster, Target)

	canbind = GetCanBind(Caster)
	incombat = IsInCombat(Caster)
	
	if ( incombat == true)
	then
		Say(Caster, "You cannot use Set Recall Point while in combat.")
	    goto exit;
	end
	
	if( canbind == 0 )
	then
		Say(Caster, "You cannot use Set Recall Point at this location. Please try in a city or suburb.")
	else
		Bind(Caster)
    end

::exit::
end