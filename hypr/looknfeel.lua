-- Change the default Omarchy look'n'feel.

-- https://wiki.hypr.land/Configuring/Basics/Variables/#general
-- hl.config({
--   general = {
--     -- No gaps between windows or borders.
--     gaps_in = 0,
--     gaps_out = 0,
--     border_size = 0,
--
--     -- Change to niri-like side-scrolling layout.
--     layout = "scrolling",
--   },
-- })

-- -- https://wiki.hypr.land/Configuring/Basics/Variables/#decoration
-- hl.config({
-- 	decoration = {
-- 		-- Use round window corners.
-- 		rounding = 0,
-- 	},
-- })
--
-- https://wiki.hypr.land/Configuring/Basics/Variables/#animations
-- hl.config({
--   animations = {
--     -- Disable all animations.
--     enabled = false,
--   },
-- })

-- https://wiki.hypr.land/Configuring/Basics/Variables/#layout
-- hl.config({
--   layout = {
--     -- Avoid overly wide single-window layouts on wide screens.
--     single_window_aspect_ratio = { 1, 1 },
--   },
-- })

-- https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/
-- hl.config({
--   scrolling = {
--     -- See only one column per screen instead of two.
--     column_width = 0.97,
--   },
-- })

-- Change the default Omarchy look'n'feel

hl.config({
	general = {
		-- No gaps between windows or borders
		-- gaps_in = 0,
		-- gaps_out = 0,
		-- border_size = 0,

		-- Use master layout instead of dwindle
		-- layout = "master",
	},

	decoration = {
		-- Use round window corners
		rounding = 0,
	},

	-- Note: layout-specific configurations (like master or dwindle options)
	-- go inside their specific tables or general layout options depending on the version.

	group = {
		col = {
			border_locked_active = "0x00000000",
			border_locked_inactive = "0x00000000",
		},
	},
})
