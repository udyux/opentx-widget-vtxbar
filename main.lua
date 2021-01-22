--[[ VtxBar v1.1

https://github.com/udyux/opentx-widget-vtxbar
Copyright 2021 | Nicolas Udy | MIT License

DISCLAIMER
This script does not rely on telemetry. It does not reflect the actual craft's state and should not
be used in situations where reliable data is critical. It is the user's responsibility to check for
correct operation before use.

**IF IN DOUBT DO NOT FLY!**
]]

local inputs = {
  { "Input", SOURCE, 92 },
  { "Color", COLOR, WHITE },
}

local labels = {
 one = "E2",
 two = "F2",
 three = "F4",
 four = "F7",
 five = "E6",
 six = "Off"
}

local function create(zone, options)
  return { zone = zone, options = options }
end

local function update(widget, options)
  widget.options = options
end

local function background() end

local function refresh(widget)
  local value = getValue(widget.options.Input)

  local output = value < -620 and labels.one
    or value < -220 and labels.two
    or value < 180 and labels.three
    or value < 580 and labels.four
    or value < 980 and labels.five
    or labels.six

  lcd.setColor(CUSTOM_COLOR, widget.options.Color)
  lcd.drawText(widget.zone.x, widget.zone.y + 2, "Ch.", SMLSIZE + CUSTOM_COLOR)
  lcd.drawText(widget.zone.x + 24, widget.zone.y, output, DBLSIZE + CUSTOM_COLOR)
end

return {
  name = "VtxBar",
  options = inputs,
  create = create,
  background = background,
  update = update,
  refresh = refresh
}
