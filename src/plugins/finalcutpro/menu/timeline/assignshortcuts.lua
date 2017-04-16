--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--                       A S S I G N   S H O R T C U T S                      --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--- === plugins.finalcutpro.menu.timeline.assignshortcuts ===
---
--- The AUTOMATION > 'Options' menu section.

--------------------------------------------------------------------------------
--
-- CONSTANTS:
--
--------------------------------------------------------------------------------
local PRIORITY = 8888888

--------------------------------------------------------------------------------
--
-- THE PLUGIN:
--
--------------------------------------------------------------------------------
local plugin = {
	id				= "finalcutpro.menu.timeline.assignshortcuts",
	group			= "finalcutpro",
	dependencies	= {
		["finalcutpro.menu.timeline"] = "timeline",
	}
}

--------------------------------------------------------------------------------
-- INITIALISE PLUGIN:
--------------------------------------------------------------------------------
function plugin.init(dependencies)
	return dependencies.timeline:addMenu(PRIORITY, function() return i18n("assignShortcuts") end)
end

return plugin