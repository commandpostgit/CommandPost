--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--                 P R E F E R E N C E S    W A T C H E R                     --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--- === plugins.finalcutpro.watchers.preferences ===
---
--- Final Cut Pro Preferences Watcher.

--------------------------------------------------------------------------------
--
-- EXTENSIONS:
--
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- CommandPost Extensions:
--------------------------------------------------------------------------------
local fcp               = require("cp.apple.finalcutpro")

--------------------------------------------------------------------------------
--
-- THE PLUGIN:
--
--------------------------------------------------------------------------------
local plugin = {
    id = "finalcutpro.watchers.preferences",
    group = "finalcutpro",
}

--------------------------------------------------------------------------------
-- INITIALISE PLUGIN:
--------------------------------------------------------------------------------
function plugin.init()

    --------------------------------------------------------------------------------
    -- Update Preferences Cache when Final Cut Pro Preferences file is updated:
    --------------------------------------------------------------------------------
    fcp:watch({
        preferences = function()
            --log.df("Preferences file change detected. Reload.")
            fcp:getPreferences()
        end,
    })

end

return plugin